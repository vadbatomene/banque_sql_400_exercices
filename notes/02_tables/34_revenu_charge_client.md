# Table : revenu_charge_client

## Description
Cette table conserve les informations financières mensuelles des clients : revenus, charges fixes et patrimoine estimé.

## Colonnes

| Colonne | Type | Description |
|---|---|---|
| id_revenu | BIGINT | Identifiant unique |
| id_client | INT | Client concerné |
| mois | DATE | Mois de référence |
| salaire | DECIMAL(14,2) | Revenu salarial |
| autres_revenus | DECIMAL(14,2) | Autres sources de revenus |
| charges_fixes | DECIMAL(14,2) | Charges fixes mensuelles |
| patrimoine_estime | DECIMAL(20,2) | Estimation du patrimoine |
| source_revenu | VARCHAR(40) | Source principale du revenu |

## Contraintes
- Clé primaire : `id_revenu`, avec AUTO_INCREMENT.
- Clé étrangère : `id_client` référence `client(id_client)`.
- Contrainte UNIQUE : un seul enregistrement par client et par mois.
- Index : `idx_revenu_client_mois` sur `id_client` et `mois`.
- Les montants possèdent une valeur par défaut de 0.00.
- `source_revenu` possède la valeur par défaut `emploi`.
- Toutes les colonnes sont obligatoires (`NOT NULL`).

## Utilité
Permet d'étudier la situation financière des clients et leur capacité de remboursement.