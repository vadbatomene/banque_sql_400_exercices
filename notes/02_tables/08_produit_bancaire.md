# Table : produit_bancaire

## 1. Objectif
Cette table répertorie les produits bancaires proposés par la banque.

## 2. Colonnes principales
- id_produit : identifiant unique du produit.
- code_produit : code de référence du produit.
- nom_produit : nom du produit bancaire.
- categorie : catégorie du produit.
- taux_remuneration : taux de rémunération.
- frais_mensuels : frais mensuels associés au produit.

## 3. Contraintes
- PRIMARY KEY : id_produit.
- UNIQUE : code_produit.
- ENUM : limite les catégories aux valeurs définies.

## 4. Index
- code_produit : index unique sur le code du produit.

## 5. Dépendances
Aucune dépendance envers une autre table.

## 6. Vérification
DESCRIBE produit_bancaire;
SHOW CREATE TABLE produit_bancaire;