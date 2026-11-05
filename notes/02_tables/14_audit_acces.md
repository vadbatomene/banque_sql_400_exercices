
# Table : audit_acces

## Objectif
Conserver une trace des actions auditées dans la base de données.

## Clé primaire
- id_audit : identifiant auto-incrémenté.

## Colonnes importantes
- utilisateur : utilisateur à l'origine de l'action.
- action_auditee : action enregistrée.
- table_auditee : table concernée.
- date_action : date et heure de l'action.
- details : informations complémentaires facultatives.

## Particularité technique
La colonne date_action utilise DEFAULT CURRENT_TIMESTAMP pour enregistrer automatiquement la date et l'heure.

## Vérification
DESCRIBE audit_acces;
SHOW CREATE TABLE audit_acces;
