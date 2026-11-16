# Table : produit_revenu_mensuel

## Description
Cette table enregistre les revenus et les coûts générés par chaque produit bancaire, pour chaque agence et chaque mois.

## Colonnes

| Colonne | Type | Description |
|---|---|---|
| mois | DATE | Mois de référence |
| id_agence | INT | Agence concernée |
| id_produit | INT | Produit bancaire concerné |
| nb_contrats | INT | Nombre de contrats enregistrés |
| revenu_frais | DECIMAL(18,2) | Revenus issus des frais |
| revenu_interets | DECIMAL(18,2) | Revenus issus des intérêts |
| cout_service | DECIMAL(18,2) | Coût du service associé au produit |

## Contraintes
- Clé primaire composée : `mois`, `id_agence`, `id_produit`.
- Clé étrangère : `id_agence` référence `agence(id_agence)`.
- Clé étrangère : `id_produit` référence `produit_bancaire(id_produit)`.
- Index : `id_agence` et `id_produit`.
- `nb_contrats` possède une valeur par défaut de 0.
- `revenu_frais`, `revenu_interets` et `cout_service` possèdent une valeur par défaut de 0.00.
- Toutes les colonnes sont obligatoires (`NOT NULL`).

## Utilité
Permet d'analyser la rentabilité des produits bancaires par agence et par période.