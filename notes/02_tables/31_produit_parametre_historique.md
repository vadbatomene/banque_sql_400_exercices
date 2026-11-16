# Table : produit_parametre_historique

## Description
Cette table conserve l'historique des paramètres financiers appliqués aux produits bancaires au fil du temps.

## Colonnes

| Colonne | Type | Description |
|---|---|---|
| id_param | BIGINT | Identifiant unique du paramètre |
| id_produit | INT | Identifiant du produit bancaire concerné |
| date_effet | DATE | Date à partir de laquelle le paramètre s'applique |
| taux_remuneration | DECIMAL(7,4) | Taux de rémunération du produit |
| frais_mensuels | DECIMAL(14,2) | Frais mensuels associés au produit |
| hypothese | VARCHAR(255) | Description du scénario ou de l'hypothèse |

## Contraintes
- Clé primaire : `id_param`, avec AUTO_INCREMENT.
- Clé étrangère : `id_produit` référence `produit_bancaire(id_produit)`.
- Contrainte UNIQUE : `uq_produit_date` empêche d'enregistrer deux paramètres pour un même produit à une même date.
- `taux_remuneration` possède une valeur par défaut de 0.0000.
- `frais_mensuels` possède une valeur par défaut de 0.00.
- Toutes les colonnes sont obligatoires (`NOT NULL`).

## Utilité
Permet de suivre l'évolution des taux et des frais des produits bancaires dans le temps.