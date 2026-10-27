-- ============================================================
-- Projet : Banque SQL - 400 exercices
-- Script : Création de la base de données
-- SGBD    : MySQL 8.0+
-- ============================================================

CREATE DATABASE IF NOT EXISTS banque_exercice
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;

USE banque_exercice;

-- Vérification de la base sélectionnée
SELECT DATABASE() AS base_active;
