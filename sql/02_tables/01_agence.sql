-- ============================================================
-- Projet : Banque SQL - 400 exercices
-- Table  : Agence
-- SGBD   : MySQL 8.0+
-- Source : structure existante bank_all.sql
-- ============================================================

USE banque_exercice;

CREATE TABLE Agence (
    id_agence INT PRIMARY KEY,
    nom       VARCHAR(100) NOT NULL,
    ville     VARCHAR(100) NOT NULL
) ENGINE=InnoDB;
