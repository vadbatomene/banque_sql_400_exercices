
# Table : client_activite_mensuelle

## Objectif
Suivre l'activité bancaire des clients sur une base mensuelle.

## Clé primaire
Clé primaire composée :
- id_client
- mois

## Clé étrangère
- id_client référence client(id_client).

## Colonnes importantes
- mois : période d'activité.
- nb_transactions : nombre de transactions.
- montant_entrant : total des entrées.
- montant_sortant : total des sorties.
- actif : indicateur d'activité.
- segment : catégorie du client.

## Particularités techniques
La clé primaire composée empêche plusieurs enregistrements pour un même client et un même mois.

Les montants utilisent DECIMAL(18,2).

## Vérification
DESCRIBE client_activite_mensuelle;
SHOW INDEX FROM client_activite_mensuelle;
SHOW CREATE TABLE client_activite_mensuelle;
