# Table : metrique_systeme

## Description
Cette table stocke les indicateurs de performance et de disponibilité des différents services du système bancaire.

## Colonnes

| Colonne | Type | Description |
|---|---|---|
| date_mesure | DATETIME | Date et heure de la mesure |
| service | VARCHAR(80) | Nom du service concerné |
| disponibilite_pct | DECIMAL(5,2) | Taux de disponibilité en pourcentage |
| temps_reponse_ms | INT | Temps de réponse en millisecondes |
| incidents | INT | Nombre d'incidents enregistrés |
| transactions_traitees | INT | Nombre de transactions traitées |

## Contraintes
- Clé primaire composée : `date_mesure`, `service`.
- Toutes les colonnes sont obligatoires (`NOT NULL`).
- `incidents` possède une valeur par défaut de 0.
- `transactions_traitees` possède une valeur par défaut de 0.
- Aucun lien par clé étrangère dans cette table.

## Utilité
Permet de surveiller les performances techniques, la disponibilité des services et les incidents du système bancaire.