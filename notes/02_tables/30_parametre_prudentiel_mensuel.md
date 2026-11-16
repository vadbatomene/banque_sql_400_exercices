# Table : parametre_prudentiel_mensuel

## Description
Cette table stocke les données financières mensuelles utilisées pour les analyses prudentielles et le suivi des risques bancaires.

## Colonnes

| Colonne | Type | Description |
|---|---|---|
| mois | DATE | Mois de référence |
| fonds_propres | DECIMAL(20,2) | Montant des fonds propres |
| actifs_ponderes_risque | DECIMAL(20,2) | Actifs pondérés en fonction des risques |
| actifs_liquides | DECIMAL(20,2) | Montant des actifs liquides |
| sorties_nettes_30j | DECIMAL(20,2) | Sorties nettes prévues sur 30 jours |
| exposition_totale | DECIMAL(20,2) | Exposition totale aux risques |
| provisions_npl | DECIMAL(20,2) | Provisions pour créances non performantes |
| encours_npl | DECIMAL(20,2) | Encours des créances non performantes |
| actifs_moyens | DECIMAL(20,2) | Moyenne des actifs |
| produits_interets | DECIMAL(20,2) | Produits issus des intérêts |
| charges_interets | DECIMAL(20,2) | Charges liées aux intérêts |
| charges_exploitation | DECIMAL(20,2) | Charges d'exploitation |
| produits_exploitation | DECIMAL(20,2) | Produits d'exploitation |
| hypothese | VARCHAR(255) | Hypothèse ou scénario retenu |

## Contraintes
- Clé primaire : `mois`.
- Toutes les colonnes sont obligatoires (`NOT NULL`).
- Aucune clé étrangère définie dans cette table.

## Utilité
Permet de suivre mensuellement les indicateurs financiers et prudentiels de la banque, notamment les risques, la liquidité et la rentabilité.