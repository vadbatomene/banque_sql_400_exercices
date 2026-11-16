# Table : reclamation_client

## Description
Cette table enregistre les réclamations des clients et permet de suivre leur traitement jusqu'à leur résolution ou leur rejet.

## Colonnes

| Colonne | Type | Description |
|---|---|---|
| id_reclamation | BIGINT | Identifiant unique de la réclamation |
| id_client | INT | Client ayant effectué la réclamation |
| id_agence | INT | Agence responsable |
| date_ouverture | DATE | Date d'ouverture |
| date_resolution | DATE | Date de résolution, si applicable |
| categorie | ENUM | Catégorie de la réclamation |
| statut | ENUM | État de traitement |
| canal | ENUM | Canal de réception |
| nb_contacts | INT | Nombre de contacts liés à la réclamation |
| satisfaction_post_resolution | TINYINT | Note de satisfaction après résolution |

## Contraintes
- Clé primaire : `id_reclamation`, avec AUTO_INCREMENT.
- Clé étrangère : `id_client` référence `client(id_client)`.
- Clé étrangère : `id_agence` référence `agence(id_agence)`.
- Index sur `id_client` et `id_agence`.
- `date_resolution` peut être NULL.
- `nb_contacts` possède une valeur par défaut de 1.
- La satisfaction peut être NULL ou comprise entre 1 et 5.
- Les catégories, statuts et canaux sont limités aux valeurs définies dans leurs ENUM respectifs.

## Utilité
Permet d'analyser les réclamations, les délais de résolution et la satisfaction des clients.