# Table : satisfaction_client

## Description
Cette table conserve les évaluations des clients concernant les services bancaires et les employés.

## Colonnes

| Colonne | Type | Description |
|---|---|---|
| id_satisfaction | BIGINT | Identifiant unique de l'évaluation |
| id_client | INT | Client ayant donné son avis |
| id_employe | INT | Employé concerné par l'évaluation |
| date_evaluation | DATE | Date de l'évaluation |
| note | TINYINT | Note de satisfaction de 1 à 5 |
| commentaire | VARCHAR(255) | Commentaire facultatif du client |

## Contraintes
- Clé primaire : `id_satisfaction`, avec AUTO_INCREMENT.
- Clé étrangère : `id_client` référence `client(id_client)`.
- Clé étrangère : `id_employe` référence `employe(id_employe)`.
- Index sur `id_client` et `id_employe`.
- Contrainte CHECK : `note` doit être comprise entre 1 et 5.
- `commentaire` peut être NULL.

## Utilité
Permet de mesurer la satisfaction des clients et d'évaluer la qualité du service fourni par les employés.