# Table : pret

## 1. Objectif
La table pret enregistre les prêts accordés aux clients de la banque.

## 2. Colonnes principales
- id_pret : identifiant unique du prêt.
- id_compte : compte associé au prêt.
- typecredit : catégorie du crédit.
- montant : montant emprunté.
- taux : taux d'intérêt.
- date_debut : date de début du prêt.
- statut : état du prêt.
- date_echeance : date d'échéance.
- date_cloture : date de clôture.
- patrimoine_garantie : valeur du patrimoine donné en garantie.
- mensualite : montant de la mensualité.

## 3. Contraintes
- PRIMARY KEY : id_pret.
- FOREIGN KEY : id_compte référence compte(id_compte).
- CHECK : montant doit être supérieur à 0.
- CHECK : taux doit être compris entre 1 et 20.

## 4. Index
- idx_pret_compte_date : id_compte, date_debut.
- idx_pret_statut_date : statut, date_debut.

## 5. Dépendance
La table pret dépend de la table compte.

## 6. Vérification
DESCRIBE pret;
SHOW CREATE TABLE pret;