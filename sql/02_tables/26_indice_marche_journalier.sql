
-- =====================================================
-- Table : indice_marche_journalier
-- Description : Historique quotidien des indices de marché
-- =====================================================

USE banque_exercice;

CREATE TABLE indice_marche_journalier (
    date_cotation DATE NOT NULL,
    indice VARCHAR(30) COLLATE utf8mb4_unicode_ci NOT NULL,
    valeur DECIMAL(12,4) NOT NULL,
    rendement_pct DECIMAL(8,4) NOT NULL DEFAULT '0.0000',

    PRIMARY KEY (date_cotation, indice)

) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_unicode_ci;
