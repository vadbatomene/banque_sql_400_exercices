# Table : hypothese_metier

## 1. Objectif
Cette table documente les hypothèses métier utilisées dans les analyses et les exercices de la base bancaire.

Elle permet de connaître les règles, valeurs et hypothèses retenues, ainsi que leur niveau de validation.

## 2. Structure

| Colonne | Type | Description |
|---|---|---|
| code_hypothese | VARCHAR(50) | Code unique de l'hypothèse. |
| domaine | VARCHAR(80) | Domaine métier concerné. |
| description_hypothese | VARCHAR(500) | Description de l'hypothèse. |
| valeur_retenue | VARCHAR(255) | Valeur ou règle retenue, facultative. |
| statut | ENUM | Statut : simulee, a_valider ou externe_requise. |
| commentaire | VARCHAR(500) | Commentaire complémentaire, facultatif. |

## 3. Clé primaire
- code_hypothese : identifie chaque hypothèse de manière unique.

## 4. Remarque
Le statut possède la valeur par défaut `simulee`.
Les colonnes `valeur_retenue` et `commentaire` acceptent NULL.
Les données seront insérées dans une étape ultérieure.