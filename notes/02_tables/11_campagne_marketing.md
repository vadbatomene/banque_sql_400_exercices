
# Table : campagne_marketing

## Objectif
Stocker les informations relatives aux campagnes marketing et suivre leurs performances.

## Clé primaire
- id_campagne

## Colonnes importantes
- canal : canal de diffusion de la campagne.
- budget : budget prévisionnel.
- cout_reel : coût réellement engagé.
- nb_cibles : nombre de personnes ciblées.
- nb_ouvertures : nombre d'ouvertures.
- nb_clics : nombre de clics.
- nb_conversions : nombre de conversions.
- revenu_attribue : revenu généré et attribué à la campagne.

## Particularité technique
La colonne canal utilise ENUM pour limiter les canaux aux valeurs autorisées.

## Vérification
DESCRIBE campagne_marketing;
SHOW CREATE TABLE campagne_marketing;
