# Table : historique_agence_client

## 1. Objectif
Cette table conserve l'historique des rattachements des clients aux agences.

Elle permet de connaître l'agence associée à un client pendant une période donnée.

## 2. Structure

| Colonne | Type | Description |
|---|---|---|
| id_historique | BIGINT | Identifiant unique de l'historique, auto-incrémenté. |
| id_client | INT | Identifiant du client concerné. |
| id_agence | INT | Identifiant de l'agence concernée. |
| date_debut | DATE | Date de début du rattachement. |
| date_fin | DATE | Date de fin du rattachement, facultative. |
| motif | VARCHAR(100) | Motif du changement, facultatif. |

## 3. Clés

### Clé primaire
- id_historique

### Clés étrangères
- id_agence référence agence(id_agence).
- id_client référence client(id_client).

## 4. Index
- fk_hac_agence : index sur id_agence.
- idx_historique_agence_client : index composé sur id_client et date_debut.

## 5. Remarque
La date de fin et le motif peuvent être NULL.
Les données seront insérées dans une étape ultérieure.