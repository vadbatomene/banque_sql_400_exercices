# Table `compte`

## Objectif
La table `compte` représente les comptes bancaires des clients.

## Colonnes principales

| Colonne | Rôle |
|---|---|
| `id_compte` | Identifiant unique du compte |
| `id_client` | Client propriétaire du compte |
| `type` | Type de compte : courant, épargne ou mobile |
| `solde` | Solde du compte, égal à 0 par défaut |
| `date_ouverture` | Date d'ouverture |
| `id_agence_ouverture` | Agence d'ouverture, facultative |
| `date_cloture` | Date de clôture, facultative |
| `statut_compte` | Statut : actif, fermé ou bloqué |
| `region` | Région associée, facultative |

## Contraintes et index
- Clé primaire : `id_compte`.
- Clé étrangère `fk_compte_client` vers `client(id_client)`.
- Clé étrangère `fk_compte_agence_ouverture` vers `agence(id_agence)`.
- Index sur le client et le type de compte.
- Index sur le client et le solde.
- Index sur le statut et la date de clôture.
- Vérification du type de compte avec `chk_compte_type`.

## Dépendances
Les tables `client` et `agence` doivent exister avant la création de cette table.

## Vérification
```sql
DESCRIBE compte;
SHOW CREATE TABLE compte;
```

Aucune donnée n'est insérée à cette étape.