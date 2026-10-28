# Table `transaction_bancaire`

## Objectif
Enregistrer les transactions effectuées sur les comptes bancaires.

## Colonnes principales
- `id_transaction` : identifiant unique.
- `id_compte` : compte concerné.
- `montant` : montant de l'opération.
- `date_transaction` : date et heure.
- `type` : type de transaction.
- `canal` : canal utilisé.
- `fraud_confirmed` : indicateur de fraude confirmée.
- `fraud_score` : score de fraude.
- `devise` : devise, CDF par défaut.

## Contraintes et index
- Clé primaire : `id_transaction`.
- Clé étrangère : `fk_transaction_compte`, liée à `compte(id_compte)`.
- Index sur le compte et la date.
- Index sur le type et la date.
- Index sur l'indicateur de fraude et la date.
- Index sur le compte et le montant.

## Dépendance
La table `compte` doit exister avant la création de cette table.

## Vérification
```sql
DESCRIBE transaction_bancaire;
SHOW CREATE TABLE transaction_bancaire;
```

Aucune donnée n'est insérée à cette étape.