
# Table : charge_client

## Objectif
Gérer les affectations des clients aux employés.

## Clé primaire
Clé primaire composée :
- id_employe
- id_client
- date_affectation

## Clés étrangères
- id_client référence client(id_client).
- id_employe référence employe(id_employe).

## Colonnes importantes
- date_affectation : début de l'affectation.
- date_fin : fin de l'affectation, facultative.

## Index
- fk_cc_client (id_client).

## Particularité technique
La clé primaire composée permet de distinguer les affectations d'un même client à différentes dates.

## Vérification
DESCRIBE charge_client;
SHOW INDEX FROM charge_client;
SHOW CREATE TABLE charge_client;
