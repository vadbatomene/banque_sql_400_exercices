
# Table : audit_transaction_bancaire

## Objectif
Conserver les informations relatives aux transactions bancaires auditées.

## Clé primaire
- id_audit : identifiant auto-incrémenté.

## Colonnes importantes
- id_transaction : transaction concernée.
- id_compte : compte concerné.
- montant : montant de la transaction.
- type_transaction : nature de la transaction.
- date_transaction : date de la transaction.
- utilisateur : utilisateur associé à l'opération.
- date_audit : date d'enregistrement de l'audit.

## Index
- idx_audit_tx_date (date_audit).
- idx_audit_tx_compte (id_compte).

## Particularité technique
La table possède deux index secondaires pour faciliter les recherches par date d'audit et par compte.

## Vérification
DESCRIBE audit_transaction_bancaire;
SHOW INDEX FROM audit_transaction_bancaire;
SHOW CREATE TABLE audit_transaction_bancaire;
