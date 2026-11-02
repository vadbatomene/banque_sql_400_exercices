
# Table : alerte_transaction

## Objectif
Enregistrer et suivre les alertes liées aux transactions bancaires suspectes ou frauduleuses.

## Clé primaire
- id_alerte : identifiant auto-incrémenté.

## Colonnes importantes
- id_transaction : transaction concernée.
- niveau : niveau de gravité de l'alerte.
- raison : motif de déclenchement.
- date_alerte : date et heure de création.
- statut_traitement : état de traitement.
- commentaire : observation complémentaire facultative.

## Index et contraintes
- PRIMARY KEY : id_alerte.
- UNIQUE KEY : uq_alerte_transaction_niveau.
- INDEX : idx_alerte_statut_date.

## Particularité technique
La contrainte UNIQUE empêche les doublons pour un même couple id_transaction et niveau.

## Vérification
DESCRIBE alerte_transaction;
SHOW INDEX FROM alerte_transaction;
SHOW CREATE TABLE alerte_transaction;
