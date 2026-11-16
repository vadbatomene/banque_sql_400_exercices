# Table : transaction_archive

## Description
Cette table stocke les transactions bancaires archivées afin de conserver leur historique et leurs informations utiles aux analyses.

## Colonnes

| Colonne | Type | Description |
|---|---|---|
| id_transaction | INT | Identifiant de la transaction |
| id_compte | INT | Compte bancaire concerné |
| montant | DECIMAL(12,2) | Montant de la transaction |
| date_transaction | DATETIME | Date et heure de la transaction |
| type | VARCHAR(50) | Type de transaction |
| canal | VARCHAR(20) | Canal utilisé |
| fraud_confirmed | TINYINT(1) | Indique si une fraude a été confirmée |
| fraud_score | DECIMAL(5,2) | Score associé au risque de fraude |
| devise | CHAR(3) | Code de la devise |
| date_archivage | TIMESTAMP | Date d'archivage automatique |

## Contraintes
- Clé primaire : `id_transaction`.
- Index : `idx_archive_date` sur `date_transaction`.
- Index : `idx_archive_compte` sur `id_compte`.
- `canal`, `fraud_confirmed`, `fraud_score` et `devise` peuvent être NULL.
- `date_archivage` prend automatiquement la date et l'heure courantes.
- Aucune clé étrangère n'est définie dans cette table.

## Utilité
Permet de conserver les anciennes transactions pour les audits, les analyses historiques et le suivi des risques de fraude.