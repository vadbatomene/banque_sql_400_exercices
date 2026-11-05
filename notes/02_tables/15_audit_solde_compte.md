
# Table : audit_solde_compte

## Objectif
Conserver l'historique des modifications des soldes des comptes bancaires.

## Clé primaire
- id_audit : identifiant auto-incrémenté.

## Colonnes importantes
- id_compte : compte concerné.
- ancien_solde : solde avant modification.
- nouveau_solde : solde après modification.
- utilisateur : utilisateur ayant effectué l'action.
- date_action : date et heure de modification.
- details : informations complémentaires.

## Index
- idx_audit_solde_compte_date (id_compte, date_action).

## Particularité technique
L'index composé facilite les recherches par compte et par date.

## Vérification
DESCRIBE audit_solde_compte;
SHOW INDEX FROM audit_solde_compte;
SHOW CREATE TABLE audit_solde_compte;
