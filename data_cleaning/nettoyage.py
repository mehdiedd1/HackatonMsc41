# -*- coding: utf-8 -*-
"""
Created on Mon Oct 20 21:37:51 2025

@author: gmali
"""
"""

import pandas as pd

# Couvertures vaccinales
df_cov = pd.read_csv("C:/Users/gmali/Documents/HACKATHON/prediction hackathon/couvertures-vaccinales-des-adolescents-et-adultes-depuis-2011-region.csv")
df_cov_2024 = df_cov[df_cov['Année'] == 2024][['Région','Grippe 65 ans et plus','Grippe moins de 65 ans à risque']]
"""

import pandas as pd

# ==============================
# 1. IQVIA : doses & actes
# ==============================
df_iqvia = pd.read_excel("C:/Users/gmali/Documents/HACKATHON/prediction hackathon/doses-actes.xlsx")

# Conversion de la date
df_iqvia['date'] = pd.to_datetime(df_iqvia['date'])

# Extraire année et mois
df_iqvia['annee'] = df_iqvia['date'].dt.year
df_iqvia['mois'] = df_iqvia['date'].dt.month

# Agrégation par mois, variable et groupe
df_iqvia_month = (
    df_iqvia.groupby(['annee','mois','variable','groupe'])['valeur']
    .sum()
    .reset_index()
)

# ==============================
# 2. Urgences / SOS
# ==============================
df_urg = pd.read_csv("C:/Users/gmali/Documents/HACKATHON/prediction hackathon/grippe-passages-urgences-et-actes-sos-medecin_reg.csv")  # adapte le séparateur si besoin

# Conversion de la date
df_urg['1er jour de la semaine'] = pd.to_datetime(df_urg['1er jour de la semaine'])

# Extraire année et mois
df_urg['annee'] = df_urg['1er jour de la semaine'].dt.year
df_urg['mois'] = df_urg['1er jour de la semaine'].dt.month

# Agrégation par mois et région
df_urg_month = (
    df_urg.groupby(["annee","mois","Région","Classe d'âge"])[
        ['Taux de passages aux urgences pour grippe',
         'Taux d\'hospitalisations après passages aux urgences pour grippe',
         'Taux d\'actes médicaux SOS médecins pour grippe']
    ].mean()  # moyenne des taux sur le mois
    .reset_index()
)

print("Aperçu Urgences/SOS mensuel :")
print(df_urg_month.head())



df_cov = pd.read_csv("C:/Users/gmali/Documents/HACKATHON/prediction hackathon/couvertures-vaccinales-des-adolescents-et-adultes-depuis-2011-region.csv")
cols_utiles = [
    "Année", "Région", "Grippe moins de 65 ans à risque", "Grippe 65 ans et plus",
    "Grippe 65-74 ans", "Grippe 75 ans et plus",
    "Grippe résidents en Ehpad", "Grippe professionnels en Ehpad"
]
df_cov = df_cov[cols_utiles]

df_iqvia_month.to_csv('df_iqvia_month.csv', index=False)
df_urg_month.to_csv('df_urg_month.csv', index=False)
df_cov.to_csv('df_cov.csv', index=False)