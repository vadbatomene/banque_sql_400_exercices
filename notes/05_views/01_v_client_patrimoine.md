# Vue : v_client_patrimoine

## Objectif
Présenter le patrimoine financier de chaque client à partir des soldes de ses comptes.

## Tables utilisées
- `client`
- `compte`

## Fonctionnement
La vue relie les clients à leurs comptes avec une jointure LEFT JOIN et calcule le patrimoine total à l'aide de SUM().

COALESCE() permet d'afficher 0 lorsqu'un client ne possède aucun compte.

## Indicateur principal
- `patrimoine_comptes` : somme des soldes des comptes du client.

## Utilité analytique
Cette vue facilite l'analyse du patrimoine des clients et peut servir à la segmentation de la clientèle.