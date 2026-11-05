# Table : esg_agence_mensuel

## 1. Objectif
Cette table conserve les indicateurs ESG mensuels associés à chaque agence.

ESG signifie Environnement, Social et Gouvernance.

## 2. Structure

| Colonne | Type | Description |
|---|---|---|
| mois | DATE | Mois de référence. |
| id_agence | INT | Identifiant de l'agence. |
| nb_contrats_numeriques | INT | Nombre de contrats numériques. |
| nb_contrats_total | INT | Nombre total de contrats. |
| energie_kwh | DECIMAL(14,2) | Consommation énergétique en kWh. |
| emissions_kgco2 | DECIMAL(14,2) | Émissions en kg de CO2. |
| financements_verts | DECIMAL(18,2) | Montant des financements verts. |
| effectif_feminin | INT | Effectif féminin. |
| effectif_total | INT | Effectif total. |

## 3. Clés

### Clé primaire composée
- mois
- id_agence

La combinaison des deux colonnes identifie une ligne de manière unique.

### Clé étrangère
- id_agence référence agence(id_agence).

## 4. Remarque
Les colonnes numériques disposent de valeurs par défaut égales à zéro.
Les données seront insérées dans une étape ultérieure.