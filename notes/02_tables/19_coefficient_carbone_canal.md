# Table : coefficient_carbone_canal

## 1. Objectif
Cette table stocke un coefficient d'émission de CO2 associé à chaque canal de transaction.

## 2. Structure

| Colonne | Type | Description |
|---|---|---|
| canal | VARCHAR(40) | Nom du canal utilisé. Clé primaire. |
| kgco2_par_transaction | DECIMAL(10,4) | Coefficient de CO2 par transaction. |
| justification | VARCHAR(255) | Justification du coefficient retenu. |

## 3. Clé primaire
- canal : identifie de manière unique chaque canal.

## 4. Remarque
Les coefficients présents dans le dump sont indiqués comme pédagogiques et non officiels.
Les données seront insérées dans une étape ultérieure.