"""Modèles de régression normalisés pour les besoins vaccinaux et les flux aux urgences."""

from __future__ import annotations

import argparse
from dataclasses import dataclass
from pathlib import Path
from typing import Dict, Iterable, Optional, Tuple

import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
from sklearn.compose import ColumnTransformer
from sklearn.impute import SimpleImputer
from sklearn.linear_model import LinearRegression
from sklearn.metrics import mean_absolute_error, mean_squared_error, r2_score
from sklearn.model_selection import train_test_split
from sklearn.pipeline import Pipeline
from sklearn.preprocessing import OneHotEncoder, StandardScaler


DATA_DIR = Path("data")
IQVIA_FILE = DATA_DIR / "df_iqvia_month.csv"
EMERGENCY_FILE = DATA_DIR / "df_urg_month.csv"


@dataclass(frozen=True)
class Dataset:
    """Regroupe les données, cibles et métadonnées nécessaires à un apprentissage."""

    features: pd.DataFrame
    target: pd.Series
    original: pd.DataFrame
    numeric_features: list[str]
    categorical_features: list[str]
    target_name: str
    prediction_name: str


class PredictiveModel:
    """Pipeline générique (imputation + normalisation + régression linéaire)."""
    # On reste volontairement sur une régression linéaire simple pour garder un modèle rapide

    def __init__(self, numeric_features: list[str], categorical_features: list[str]) -> None:
        self.numeric_features = numeric_features
        self.categorical_features = categorical_features
        self.feature_columns = numeric_features + categorical_features
        self._pipeline = self._build_pipeline()

    def _build_pipeline(self) -> Pipeline:
        transformers = []

        if self.numeric_features:
            numeric_transformer = Pipeline(
                steps=[
                    ("imputer", SimpleImputer(strategy="median")),
                    ("scaler", StandardScaler()),
                ]
            )
            transformers.append(("numeric", numeric_transformer, self.numeric_features))

        if self.categorical_features:
            categorical_transformer = Pipeline(
                steps=[
                    ("imputer", SimpleImputer(strategy="most_frequent")),
                    ("encoder", OneHotEncoder(handle_unknown="ignore")),
                ]
            )
            transformers.append(("categorical", categorical_transformer, self.categorical_features))

        if not transformers:
            raise ValueError("Aucun transformeur défini pour le pipeline.")

        preprocessor = ColumnTransformer(transformers=transformers)
        return Pipeline(steps=[("preprocessor", preprocessor), ("model", LinearRegression())])

    def fit(self, features: pd.DataFrame, target: pd.Series) -> None:
        self._pipeline.fit(features[self.feature_columns], target)

    def predict(self, features: pd.DataFrame, name: str) -> pd.Series:
        predictions = self._pipeline.predict(features[self.feature_columns])
        return pd.Series(predictions, index=features.index, name=name)

    def evaluate(self, features: pd.DataFrame, target: pd.Series) -> Dict[str, float]:
        predictions = self._pipeline.predict(features[self.feature_columns])
        mse = mean_squared_error(target, predictions)
        return {
            "r2": r2_score(target, predictions),
            "rmse": float(np.sqrt(mse)),
            "mae": mean_absolute_error(target, predictions),
        }


def load_iqvia_dataset(path: Path = IQVIA_FILE) -> Dataset:
    if not path.exists():
        raise FileNotFoundError(f"Fichier IQVIA introuvable : {path}")

    df = pd.read_csv(path).rename(
        columns={
            "annee": "year",
            "mois": "month",
            "variable": "variable",
            "groupe": "group",
            "valeur": "value",
        }
    )

    df["year"] = pd.to_numeric(df["year"], errors="coerce").astype("Int64")
    df["month"] = pd.to_numeric(df["month"], errors="coerce").astype("Int64")
    df["value"] = pd.to_numeric(df["value"], errors="coerce")
    df = df.dropna(subset=["year", "month", "value"]).copy()

    pivot = (
        df.pivot_table(
            index=["year", "month", "group"],
            columns="variable",
            values="value",
            aggfunc="sum",
        )
        .reset_index()
        .rename(columns={"ACTE(VGP)": "acts_vgp", "DOSES(J07E1)": "vaccine_doses"})
    )

    if "vaccine_doses" not in pivot.columns:
        raise ValueError("La colonne `DOSES(J07E1)` est absente des données IQVIA.")

    if "acts_vgp" not in pivot.columns:
        pivot["acts_vgp"] = np.nan

    pivot["year"] = pivot["year"].astype(int)
    pivot["month"] = pivot["month"].astype(int)
    pivot["acts_vgp"] = pd.to_numeric(pivot["acts_vgp"], errors="coerce")
    pivot["vaccine_doses"] = pd.to_numeric(pivot["vaccine_doses"], errors="coerce")

    pivot["month_sin"] = np.sin(2 * np.pi * (pivot["month"] - 1) / 12.0)
    pivot["month_cos"] = np.cos(2 * np.pi * (pivot["month"] - 1) / 12.0)

    numeric_features = ["acts_vgp", "year", "month", "month_sin", "month_cos"]
    categorical_features = ["group"]

    features = pivot[numeric_features + categorical_features].copy()
    target = pivot["vaccine_doses"].astype(float)

    original = pivot.copy()
    return Dataset(
        features=features,
        target=target,
        original=original,
        numeric_features=numeric_features,
        categorical_features=categorical_features,
        target_name="vaccine_doses",
        prediction_name="predicted_vaccine_doses",
    )


def load_emergency_dataset(path: Path = EMERGENCY_FILE) -> Dataset:
    if not path.exists():
        raise FileNotFoundError(f"Fichier urgences introuvable : {path}")

    df = pd.read_csv(path).rename(
        columns={
            "annee": "year",
            "mois": "month",
            "Région": "region",
            "Classe d'âge": "age_group",
            "Taux de passages aux urgences pour grippe": "urgent_cases",
            "Taux d'hospitalisations après passages aux urgences pour grippe": "hospitalization_rate",
            "Taux d'actes médicaux SOS médecins pour grippe": "sos_medecin_cases",
        }
    )

    for column in ("year", "month"):
        df[column] = pd.to_numeric(df[column], errors="coerce")

    for column in ("urgent_cases", "hospitalization_rate", "sos_medecin_cases"):
        df[column] = pd.to_numeric(df[column], errors="coerce")

    df = df.dropna(subset=["year", "month", "urgent_cases"]).copy()
    df["year"] = df["year"].astype(int)
    df["month"] = df["month"].astype(int)

    df["month_sin"] = np.sin(2 * np.pi * (df["month"] - 1) / 12.0)
    df["month_cos"] = np.cos(2 * np.pi * (df["month"] - 1) / 12.0)

    numeric_features = [
        "year",
        "month",
        "month_sin",
        "month_cos",
        "hospitalization_rate",
        "sos_medecin_cases",
    ]
    categorical_features = ["region", "age_group"]

    features = df[numeric_features + categorical_features].copy()
    target = df["urgent_cases"].astype(float)
    original = df.copy()

    return Dataset(
        features=features,
        target=target,
        original=original,
        numeric_features=numeric_features,
        categorical_features=categorical_features,
        target_name="urgent_cases",
        prediction_name="predicted_urgent_cases",
    )


TASK_LOADERS = {
    "vaccine": load_iqvia_dataset,
    "urgency": load_emergency_dataset,
}


def _future_periods(start_year: int, start_month: int, horizon: int) -> list[tuple[int, int]]:
    """Generate a list of (year, month) tuples for the requested horizon."""
    periods: list[tuple[int, int]] = []
    year, month = start_year, start_month
    for _ in range(horizon):
        month += 1
        if month > 12:
            month = 1
            year += 1
        periods.append((year, month))
    return periods


def generate_future_iqvia(dataset: Dataset, horizon: int) -> pd.DataFrame:
    """Create future rows for the vaccine dataset using last-season benchmarks."""

    if horizon <= 0:
        return pd.DataFrame(columns=dataset.original.columns)

    original = dataset.original.copy()
    last_row = original.sort_values(["year", "month"]).iloc[-1]
    periods = _future_periods(int(last_row["year"]), int(last_row["month"]), horizon)
    groups = original["group"].dropna().unique()

    last_values = (
        original.dropna(subset=["group", "month"])
        .sort_values("year")
        .groupby(["group", "month"], as_index=False)
        .tail(1)
        .set_index(["group", "month"])
    )
    seasonal_means = (
        original.groupby(["group", "month"], dropna=True)[["acts_vgp"]]
        .mean()
        .rename(columns={"acts_vgp": "acts_vgp_mean"})
    )
    month_means = (
        original.groupby("month", dropna=True)[["acts_vgp"]]
        .mean()
        .rename(columns={"acts_vgp": "acts_vgp_mean"})
    )
    global_mean = float(original["acts_vgp"].mean())

    rows = []
    for year, month in periods:
        month_sin = np.sin(2 * np.pi * (month - 1) / 12.0)
        month_cos = np.cos(2 * np.pi * (month - 1) / 12.0)
        for group in groups:
            acts_value = np.nan
            key = (group, month)
            if key in last_values.index and not pd.isna(last_values.loc[key, "acts_vgp"]):
                acts_value = float(last_values.loc[key, "acts_vgp"])
            elif key in seasonal_means.index and not pd.isna(seasonal_means.loc[key, "acts_vgp_mean"]):
                acts_value = float(seasonal_means.loc[key, "acts_vgp_mean"])
            elif month in month_means.index and not pd.isna(month_means.loc[month, "acts_vgp_mean"]):
                acts_value = float(month_means.loc[month, "acts_vgp_mean"])
            else:
                acts_value = global_mean

            rows.append(
                {
                    "year": year,
                    "month": month,
                    "group": group,
                    "acts_vgp": acts_value,
                    "vaccine_doses": np.nan,
                    "month_sin": month_sin,
                    "month_cos": month_cos,
                }
            )

    return pd.DataFrame(rows, columns=dataset.original.columns)


def generate_future_emergency(dataset: Dataset, horizon: int) -> pd.DataFrame:
    """Create future rows for the emergency dataset preserving region/age combos."""

    if horizon <= 0:
        return pd.DataFrame(columns=dataset.original.columns)

    original = dataset.original.copy()
    last_row = original.sort_values(["year", "month"]).iloc[-1]
    periods = _future_periods(int(last_row["year"]), int(last_row["month"]), horizon)
    combos = original[["region", "age_group"]].drop_duplicates()

    last_values = (
        original.dropna(subset=["region", "age_group", "month"])
        .sort_values("year")
        .groupby(["region", "age_group", "month"], as_index=False)
        .tail(1)
        .set_index(["region", "age_group", "month"])
    )
    seasonal_means = (
        original.groupby(["region", "age_group", "month"], dropna=True)[
            ["hospitalization_rate", "sos_medecin_cases"]
        ]
        .mean()
        .rename(columns=lambda col: f"{col}_mean")
    )
    month_means = (
        original.groupby("month", dropna=True)[["hospitalization_rate", "sos_medecin_cases"]]
        .mean()
        .rename(columns=lambda col: f"{col}_mean")
    )
    global_defaults = {
        "hospitalization_rate_mean": float(original["hospitalization_rate"].mean()),
        "sos_medecin_cases_mean": float(original["sos_medecin_cases"].mean()),
    }

    rows = []
    for year, month in periods:
        month_sin = np.sin(2 * np.pi * (month - 1) / 12.0)
        month_cos = np.cos(2 * np.pi * (month - 1) / 12.0)
        for _, combo in combos.iterrows():
            key = (combo["region"], combo["age_group"], month)
            if key in last_values.index and not pd.isna(last_values.loc[key, "hospitalization_rate"]):
                hosp_value = float(last_values.loc[key, "hospitalization_rate"])
            elif key in seasonal_means.index and not pd.isna(seasonal_means.loc[key, "hospitalization_rate_mean"]):
                hosp_value = float(seasonal_means.loc[key, "hospitalization_rate_mean"])
            elif month in month_means.index and not pd.isna(month_means.loc[month, "hospitalization_rate_mean"]):
                hosp_value = float(month_means.loc[month, "hospitalization_rate_mean"])
            else:
                hosp_value = global_defaults["hospitalization_rate_mean"]

            if key in last_values.index and not pd.isna(last_values.loc[key, "sos_medecin_cases"]):
                sos_value = float(last_values.loc[key, "sos_medecin_cases"])
            elif key in seasonal_means.index and not pd.isna(seasonal_means.loc[key, "sos_medecin_cases_mean"]):
                sos_value = float(seasonal_means.loc[key, "sos_medecin_cases_mean"])
            elif month in month_means.index and not pd.isna(month_means.loc[month, "sos_medecin_cases_mean"]):
                sos_value = float(month_means.loc[month, "sos_medecin_cases_mean"])
            else:
                sos_value = global_defaults["sos_medecin_cases_mean"]

            rows.append(
                {
                    "year": year,
                    "month": month,
                    "region": combo["region"],
                    "age_group": combo["age_group"],
                    "urgent_cases": np.nan,
                    "hospitalization_rate": hosp_value,
                    "sos_medecin_cases": sos_value,
                    "month_sin": month_sin,
                    "month_cos": month_cos,
                }
            )

    return pd.DataFrame(rows, columns=dataset.original.columns)


FUTURE_GENERATORS = {
    "vaccine": generate_future_iqvia,
    "urgency": generate_future_emergency,
}


def train_and_evaluate(
    task: str,
    test_size: float = 0.2,
    random_state: int = 42,
    output_predictions: Optional[Path] = None,
    forecast_horizon: int = 0,
) -> Tuple[Dict[str, float], pd.DataFrame]:
    dataset_loader = TASK_LOADERS.get(task)
    if dataset_loader is None:
        raise KeyError(f"Tâche inconnue `{task}`. Choisissez parmi: {', '.join(TASK_LOADERS)}")

    dataset = dataset_loader()

    X_train, X_test, y_train, y_test = train_test_split(
        dataset.features,
        dataset.target,
        test_size=test_size,
        random_state=random_state,
    )

    model = PredictiveModel(dataset.numeric_features, dataset.categorical_features)
    model.fit(X_train, y_train)
    metrics = model.evaluate(X_test, y_test)

    predictions = model.predict(dataset.features, name=dataset.prediction_name)
    dataset_with_predictions = dataset.original.copy()
    dataset_with_predictions[dataset.prediction_name] = predictions

    if forecast_horizon > 0:
        future_generator = FUTURE_GENERATORS.get(task)
        if future_generator is None:
            raise KeyError(f"Aucun générateur de futur défini pour la tâche `{task}`.")

        future_original = future_generator(dataset, forecast_horizon)
        if not future_original.empty:
            future_features = future_original[dataset.numeric_features + dataset.categorical_features]
            future_predictions = model.predict(future_features, name=dataset.prediction_name)
            future_original[dataset.prediction_name] = future_predictions
            future_original[dataset.target_name] = np.nan
            dataset_with_predictions = pd.concat(
                [dataset_with_predictions, future_original], ignore_index=True
            )

    if output_predictions:
        output_predictions.parent.mkdir(parents=True, exist_ok=True)
        dataset_with_predictions.to_csv(output_predictions, index=False)

    return metrics, dataset_with_predictions


def plot_predictions(task: str, dataset: pd.DataFrame, output: Path) -> None:
    target_column = "vaccine_doses" if task == "vaccine" else "urgent_cases"
    prediction_column = (
        "predicted_vaccine_doses" if task == "vaccine" else "predicted_urgent_cases"
    )

    required_cols = {"year", "month", prediction_column}
    if target_column in dataset.columns:
        required_cols.add(target_column)
    if not required_cols.issubset(dataset.columns):
        raise KeyError("Colonnes nécessaires pour le tracé indisponibles dans le dataset.")

    observed = dataset.dropna(subset=[target_column])
    agg_func = "sum" if task == "vaccine" else "mean"

    observed_agg = (
        observed.groupby(["year", "month"], as_index=False)[target_column]
        .agg(agg_func)
        .rename(columns={target_column: "observed"})
    )

    predicted_agg = (
        dataset.groupby(["year", "month"], as_index=False)[prediction_column]
        .agg(agg_func)
        .rename(columns={prediction_column: "predicted"})
    )

    aggregated = (
        observed_agg.merge(predicted_agg, on=["year", "month"], how="outer")
        .sort_values(["year", "month"])
        .reset_index(drop=True)
    )

    aggregated["period"] = pd.to_datetime(
        dict(year=aggregated["year"], month=aggregated["month"], day=1), errors="coerce"
    )

    plt.figure(figsize=(10, 5))
    plt.plot(aggregated["period"], aggregated["observed"], label="Observé")
    plt.plot(aggregated["period"], aggregated["predicted"], label="Prédit", linestyle="--")
    plt.xlabel("Période")
    plt.ylabel("Doses vaccinales (somme mensuelle)" if task == "vaccine" else "Taux de passages aux urgences (moyenne)")
    plt.title(f"Évolution observée vs prédite ({task})")
    plt.legend()
    plt.grid(True, alpha=0.3)

    output.parent.mkdir(parents=True, exist_ok=True)
    plt.tight_layout()
    plt.savefig(output, dpi=150)
    plt.close()


def main(args: Optional[Iterable[str]] = None) -> None:
    parser = argparse.ArgumentParser(
        description="Normaliser les données et entraîner un modèle de régression linéaire."
    )
    parser.add_argument(
        "--task",
        choices=sorted(TASK_LOADERS.keys()),
        default="vaccine",
        help="Jeu de données à modéliser (vaccine ou urgency).",
    )
    parser.add_argument(
        "--output",
        type=Path,
        default=None,
        help="Chemin du CSV à créer avec les prédictions (optionnel).",
    )
    parser.add_argument(
        "--plot",
        type=Path,
        default=None,
        help="Chemin du fichier image pour sauvegarder un graphique Observé vs Prédit.",
    )
    parser.add_argument(
        "--forecast-horizon",
        type=int,
        default=0,
        help="Nombre de mois supplémentaires à prédire après la dernière observation.",
    )
    parser.add_argument(
        "--test-size",
        type=float,
        default=0.2,
        help="Fraction des données réservée au test (défaut 0.2).",
    )
    parser.add_argument(
        "--random-state",
        type=int,
        default=42,
        help="Graine aléatoire utilisée pour la séparation apprentissage/test.",
    )

    cli_args = parser.parse_args(args=args)

    metrics, dataset_with_predictions = train_and_evaluate(
        task=cli_args.task,
        test_size=cli_args.test_size,
        random_state=cli_args.random_state,
        output_predictions=cli_args.output,
        forecast_horizon=cli_args.forecast_horizon,
    )

    if cli_args.plot:
        plot_predictions(cli_args.task, dataset_with_predictions, cli_args.plot)

    print(f"Résultats pour la tâche `{cli_args.task}` :")
    for name, value in metrics.items():
        print(f"  {name}: {value:.4f}")


if __name__ == "__main__":
    main()
