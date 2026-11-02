
# Table : appel_conseiller

## Objectif
Enregistrer les appels téléphoniques effectués par les conseillers.

## Clé primaire
- id_appel : identifiant auto-incrémenté.

## Clés étrangères
- id_employe référence employe(id_employe).
- id_client référence client(id_client).

## Colonnes importantes
- date_appel : date et heure de l'appel.
- duree_secondes : durée de l'appel.
- abouti : indique si l'appel a abouti.
- motif : raison de l'appel.

## Index
- id_employe
- id_client
- idx_appel_date

## Vérification
DESCRIBE appel_conseiller;
SHOW INDEX FROM appel_conseiller;
SHOW CREATE TABLE appel_conseiller;
