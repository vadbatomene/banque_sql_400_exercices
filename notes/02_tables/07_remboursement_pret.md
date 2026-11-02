# Table : remboursement_pret

## 1. Objectif
Cette table enregistre les échéances et les remboursements des prêts.

## 2. Colonnes principales
- id_remboursement : identifiant unique du remboursement.
- id_pret : identifiant du prêt concerné.
- numero_echeance : numéro de l'échéance.
- date_echeance : date prévue du paiement.
- date_paiement : date réelle du paiement.
- montant_du : montant à payer.
- montant_paye : montant effectivement payé.
- statut : état du remboursement.

## 3. Contraintes
- PRIMARY KEY : id_remboursement.
- FOREIGN KEY : id_pret référence pret(id_pret).
- UNIQUE : combinaison id_pret et numero_echeance.

## 4. Index
- uq_pret_echeance : id_pret, numero_echeance.
- idx_remboursement_statut_date : statut, date_echeance.

## 5. Dépendance
La table remboursement_pret dépend de la table pret.

## 6. Vérification
DESCRIBE remboursement_pret;
SHOW CREATE TABLE remboursement_pret;