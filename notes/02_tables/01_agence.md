# Table Agence

## 1. Objectif

La table `Agence` représente les agences de notre base bancaire.
Elle constitue une référence pour les autres tables qui doivent
indiquer l'agence à laquelle elles sont rattachées.

## 2. Structure de la table

| Colonne | Type | Contraintes | Rôle |
|---|---|---|---|
| `id_agence` | INT | PRIMARY KEY | Identifiant unique de l'agence |
| `nom` | VARCHAR(100) | NOT NULL | Nom de l'agence |
| `ville` | VARCHAR(100) | NOT NULL | Ville où se trouve l'agence |

## 3. Explications techniques

### `id_agence INT PRIMARY KEY`

- `INT` stocke un nombre entier.
- `PRIMARY KEY` définit la clé primaire.
- Chaque agence doit avoir un identifiant unique et non nul.
- Nous ne mettons pas `AUTO_INCREMENT`, afin de conserver
  la définition de référence du projet.

### `nom VARCHAR(100) NOT NULL`

- `VARCHAR(100)` stocke une chaîne de caractères pouvant
  contenir jusqu'à 100 caractères.
- `NOT NULL` rend le nom obligatoire.

### `ville VARCHAR(100) NOT NULL`

Cette colonne stocke la ville de l'agence.
La contrainte `NOT NULL` interdit une valeur absente.

### `ENGINE=InnoDB`

InnoDB prend notamment en charge les clés étrangères et
les transactions, utiles pour une base relationnelle.

## 4. Script SQL complet

Le code ci-dessous doit également être conservé dans
`sql/02_tables/01_agence.sql`.

```sql
USE banque_exercice;

CREATE TABLE Agence (
    id_agence INT PRIMARY KEY,
    nom       VARCHAR(100) NOT NULL,
    ville     VARCHAR(100) NOT NULL
) ENGINE=InnoDB;
