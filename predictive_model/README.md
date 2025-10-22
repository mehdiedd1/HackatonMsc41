# Prédictions Vaccins & Urgences – mode d’emploi facile

Ce dossier contient **un seul script Python** (`predictive_model.py`) qui :
- nettoie vos données historiques,
- entraîne un petit modèle de régression,
- compare les valeurs observées aux valeurs prédites,
- prolonge la série de données sur les prochains mois,
- exporte un tableau CSV et un graphique PNG prêts à l’emploi.


## 1. Installer les prérequis

### Vérifier que Python est disponible
Ouvrez un terminal (ou l’invite de commandes) dans ce dossier et tapez :
```bash
python3 --version
```
Si la commande renvoie une version (ex. `Python 3.10.12`), tout va bien.  
Sinon, installez Python 3.10 ou plus récent via https://www.python.org/downloads/.

### (Optionnel mais recommandé) Créer un environnement virtuel
```bash
python3 -m venv .venv
source .venv/bin/activate          # Windows PowerShell : .venv\Scripts\Activate.ps1
```
Vous pourrez quitter l’environnement plus tard avec `deactivate`.

### Installer les bibliothèques nécessaires
```bash
python3 -m pip install -r requirements.txt
```

---

## 2. Préparer les fichiers de données

Les données doivent être placées dans le dossier `data/` avec les noms suivants :

| Fichier attendu | Rôle | Colonnes minimales (noms exacts) |
| --- | --- | --- |
| `df_iqvia_month.csv` | Historique des vaccinations | `annee`, `mois`, `variable`, `groupe`, `valeur` |
| `df_urg_month.csv` | Statistiques urgences grippe | `annee`, `mois`, `Région`, `Classe d'âge`, `Taux de passages aux urgences pour grippe`, `Taux d'hospitalisations après passages aux urgences pour grippe`, `Taux d'actes médicaux SOS médecins pour grippe` |

### À quoi correspondent ces colonnes ?
- **annee / mois** : année et mois de l’observation.
- **variable** (fichier vaccins) : type de mesure (`ACTE(VGP)` ou `DOSES(J07E1)`).
- **groupe** (fichier vaccins) : groupe d’âge (`65 ans et plus`, etc.).
- **valeur** : valeur numérique mesurée pour la combinaison (année, mois, variable, groupe).
- **Région / Classe d'âge** (fichier urgences) : zone géographique et tranche d’âge.
- **Taux de passages... / Taux d'hospitalisations... / Taux d'actes SOS médecins...** : indicateurs de suivi de l’activité grippe.

> Important : laissez les en-têtes exactement comme décrits ci-dessus. Le script les renomme et les convertit automatiquement.

---

## 3. Lancer des prédictions

Toutes les commandes se lancent depuis le dossier racine du projet.

### Cas 1 – Besoins vaccinaux (+6 mois de projection)
```bash
python3 predictive_model.py \
  --task vaccine \
  --output data/predictions_vaccine.csv \
  --plot data/vaccine_plot.png \
  --forecast-horizon 6
```

### Cas 2 – Passages aux urgences (+6 mois de projection)
```bash
python3 predictive_model.py \
  --task urgency \
  --output data/predictions_urgency.csv \
  --plot data/urgency_plot.png \
  --forecast-horizon 6
```

Pendant l’exécution, trois métriques s’affichent :
- `r2` : score entre 0 et 1. Plus il est proche de 1, mieux les prédictions collent à l’historique.
- `rmse` : erreur quadratique moyenne. Un chiffre bas signifie moins d’écart.
- `mae` : erreur absolue moyenne, compréhensible comme l’écart moyen typique.

#### Options supplémentaires utiles
- `--forecast-horizon N` : nombre de mois supplémentaires après la dernière date observée.
- `--test-size 0.2` : part des données gardées pour évaluer le modèle (20 % par défaut).
- `--random-state 42` : graine aléatoire pour reproduire exactement la même sortie.
- `--plot` / `--output` : chemins personnalisés pour les fichiers de sortie (facultatifs mais conseillés).

---

## 4. Résultats générés

Après chaque commande :
- `data/predictions_*.csv` : tableau complet avec une colonne `predicted_*`. Les mois futurs contiennent uniquement la prédiction.
- `data/*_plot.png` : graphique Observé (ligne pleine) vs Prédit (pointillés) en base mensuelle.
- Terminal : récapitulatif des métriques + message de fin.

Exemple de lecture du CSV vaccins :
- `acts_vgp` : actes médicaux associés (issus des données historiques).
- `vaccine_doses` : valeurs réellement observées (vide pour les mois projetés).
- `predicted_vaccine_doses` : estimation de doses pour chaque combinaison (année, mois, groupe).

---

## 5. Ce que fait le script techniquement (simple à expliquer)

1. **Chargement des données** : renomme les colonnes, transforme les types (nombres, dates) et ajoute deux colonnes saisonnières (`month_sin`, `month_cos`) pour représenter le cycle annuel.
2. **Pipeline machine learning** : impute les valeurs manquantes, normalise les colonnes numériques, encode les catégories, puis applique une régression linéaire.
3. **Séparation apprentissage/test** : conserve une part des données pour vérifier la performance.
4. **Prédiction** : génère des valeurs sur l’historique, puis extrapole les mois futurs en réutilisant les tendances de la saison précédente lorsque c’est possible.
5. **Visualisation** : agrège les résultats par mois et trace un graphique comparatif.

Le tout repose sur des composants standards de `scikit-learn`, ce qui rend les résultats faciles à interpréter et à retravailler si besoin.

---

## 6. Problèmes fréquents & solutions rapides

| Symptôme | Cause probable | Solution |
| --- | --- | --- |
| `ModuleNotFoundError: No module named 'pandas'` | Bibliothèques non installées | Rejouer la commande d’installation des dépendances |
| `FileNotFoundError` sur un CSV | Mauvais nom ou fichier absent | Vérifier que le fichier est dans `data/` avec le bon nom |
| `ValueError` sur les colonnes | En-têtes modifiés | Garder les noms de colonnes exactement comme attendus |
| Graphique sans projection | Oubli du paramètre `--forecast-horizon` | Relancer la commande avec `--forecast-horizon N` |

---

## 7. Aller plus loin

- Modifier `--forecast-horizon` pour tester des scénarios plus longs.
- Sauvegarder les métriques dans un fichier texte pour garder l’historique des performances.
- Remplacer le modèle linéaire dans `predictive_model.py` si vous souhaitez tester d’autres algorithmes.


