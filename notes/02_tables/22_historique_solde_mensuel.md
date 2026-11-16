# Table : historique_solde_mensuel

## 1. Objectif
Cette table conserve l'historique des soldes des comptes bancaires à la fin de chaque mois.

## 2. Structure

| Colonne | Type | Description |
|---|---|---|
| id_compte | INT | Identifiant du compte bancaire. |
| mois | DATE | Mois de référence. |
| solde_fin_mois | DECIMAL(14,2) | Solde du compte à la fin du mois. |

## 3. Clés

### Clé primaire composée
- id_compte
- mois

La combinaison des deux colonnes identifie chaque enregistrement de manière unique.

### Clé étrangère
- id_compte référence compte(id_compte).

## 4. Remarque
Un compte peut avoir plusieurs enregistrements, un pour chaque mois.
Les données seront insérées dans une étape ultérieure.