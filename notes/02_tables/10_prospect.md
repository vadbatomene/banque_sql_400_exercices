# Table : prospect

## 1. Objectif
Cette table permet de suivre les prospects commerciaux de la banque.

## 2. Colonnes
- id_prospect : identifiant unique du prospect.
- nom : nom du prospect.
- agence_id : agence responsable du prospect.
- date_creation : date d'enregistrement.
- source : origine du prospect.
- statut : état du prospect.
- id_client_converti : identifiant du client après conversion.
- produit_interet : produit bancaire qui intéresse le prospect.

## 3. Contraintes
- PRIMARY KEY : id_prospect.
- FOREIGN KEY : agence_id référence agence(id_agence).
- FOREIGN KEY : id_client_converti référence client(id_client).

## 4. Index
- fk_prospect_agence : index sur agence_id.
- fk_prospect_client : index sur id_client_converti.

## 5. Dépendances
- agence
- client

## 6. Vérification
DESCRIBE prospect;
SHOW CREATE TABLE prospect;