# Table `client`

## 1. Objectif

La table `client` contient les informations d'identification des clients de la banque.

## 2. Description des colonnes

| Colonne | Type | Description |
|---|---|---|
| `id_client` | INT | Identifiant unique du client |
| `nom` | VARCHAR(100) | Nom, obligatoire |
| `post_nom` | VARCHAR(100) | Post-nom, facultatif |
| `prenom` | VARCHAR(45) | Prénom, obligatoire |
| `titre` | VARCHAR(10) | Titre du client, facultatif |
| `date_naissance` | DATE | Date de naissance, obligatoire |
| `id_agence` | INT | Identifiant de l'agence de rattachement |

## 3. Clés et index

- **Clé primaire :** `id_client`.
- **Index :** `idx_client_agence` sur `id_agence`.
- **Clé étrangère :** `fk_client_agence`, qui référence `agence(id_agence)`.

## 4. Dépendance

La table `agence` doit exister avant la création de `client`.

## 5. Vérification

Exécuter `DESCRIBE client;` pour examiner les colonnes, puis `SHOW CREATE TABLE client;` pour vérifier les contraintes et l'index.
