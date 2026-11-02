# Table : compte_produit

## 1. Objectif
Cette table associe les comptes bancaires aux produits souscrits.

## 2. Colonnes
- id_compte : identifiant du compte.
- id_produit : identifiant du produit bancaire.
- date_souscription : date de souscription.
- date_resiliation : date de résiliation éventuelle.
- statut : état de la souscription.

## 3. Contraintes
- PRIMARY KEY : (id_compte, id_produit).
- FOREIGN KEY : id_compte référence compte(id_compte).
- FOREIGN KEY : id_produit référence produit_bancaire(id_produit).

## 4. Index
- Clé primaire composite sur id_compte et id_produit.
- fk_cp_produit : index sur id_produit.

## 5. Dépendances
- compte
- produit_bancaire

## 6. Vérification
DESCRIBE compte_produit;
SHOW CREATE TABLE compte_produit;