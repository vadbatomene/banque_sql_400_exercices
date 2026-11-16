# Table : incident_client

## 1. Rôle
Cette table enregistre les incidents associés aux clients de la banque.

## 2. Structure
- `id_incident` : identifiant unique de l'incident, auto-incrémenté.
- `id_client` : identifiant du client concerné.
- `date_incident` : date à laquelle l'incident s'est produit.
- `type_incident` : catégorie de l'incident.
- `gravite` : niveau de gravité, avec `faible` comme valeur par défaut.
- `resolu` : indique si l'incident est résolu.
- `date_resolution` : date de résolution éventuelle.
- `cout_estime` : coût estimé de l'incident.
- `source_simulation` : origine de l'enregistrement, avec `regle pedagogique` par défaut.

## 3. Relations
- `id_client` référence `client(id_client)`.

## 4. Index
- `id_client` : facilite les recherches par client.
- `idx_incident_date_type` : facilite les recherches par date et type d'incident.

## 5. Règles particulières
- Le type d'incident et sa gravité sont limités aux valeurs définies dans les ENUM.
- Un incident est considéré comme non résolu par défaut (`resolu = 0`).
- Le coût estimé est initialisé à `0.00` par défaut.