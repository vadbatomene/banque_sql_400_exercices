# Table : parametre_metier

## Description
Cette table centralise les paramètres généraux utilisés dans la gestion métier de la banque.

## Colonnes

| Colonne | Type | Description |
|---|---|---|
| id_parametre | TINYINT | Identifiant du paramètre |
| cdf_par_usd | DECIMAL(12,4) | Taux de conversion CDF vers USD |
| usd_par_eur | DECIMAL(12,4) | Taux de conversion USD vers EUR |
| usd_par_gbp | DECIMAL(12,4) | Taux de conversion USD vers GBP |
| seuil_alerte_cdf | DECIMAL(18,2) | Seuil de déclenchement d'une alerte en CDF |
| seuil_structuration_usd | DECIMAL(12,2) | Seuil de structuration en USD |
| fenetre_lcbft_jours | INT | Durée de la fenêtre de surveillance LCB-FT en jours |
| age_min_client | INT | Âge minimum requis pour un client |
| derniere_maj | TIMESTAMP | Date de dernière modification automatique |

## Contraintes
- Clé primaire : `id_parametre`.
- Toutes les colonnes sont obligatoires (`NOT NULL`).
- `derniere_maj` prend automatiquement la date et l'heure courantes à la création.
- `derniere_maj` est actualisée automatiquement lors d'une modification.
- `parametre_metier_chk_1` impose des taux de change strictement positifs.
- `parametre_metier_chk_2` impose une fenêtre LCB-FT positive et un âge minimum supérieur ou égal à zéro.

## Utilité
Permet de centraliser les règles et paramètres utilisés par les traitements métier de la banque.