# Table : journal_erreur

## 1. Rôle
Cette table permet d'enregistrer les erreurs survenues pendant l'exécution des opérations SQL.

## 2. Structure des colonnes
- `id_erreur` : identifiant unique de l'erreur, généré automatiquement.
- `date_erreur` : date et heure de l'erreur, initialisées automatiquement avec `CURRENT_TIMESTAMP`.
- `code_sql` : code SQL associé à l'erreur, facultatif.
- `message_erreur` : description détaillée de l'erreur.
- `procedure_source` : nom de la procédure à l'origine de l'erreur, facultatif.

## 3. Clé primaire
- `id_erreur` : clé primaire auto-incrémentée.

## 4. Particularités
- `message_erreur` utilise le type `TEXT` pour permettre de stocker des messages relativement longs.
- `date_erreur` reçoit automatiquement la date et l'heure courantes si aucune valeur n'est fournie.
- `code_sql` et `procedure_source` peuvent être NULL.