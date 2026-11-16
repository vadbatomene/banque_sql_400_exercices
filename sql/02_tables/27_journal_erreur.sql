
-- =====================================================
-- Table : journal_erreur
-- Description : Journalisation des erreurs SQL
-- =====================================================

USE banque_exercice;

CREATE TABLE journal_erreur (
    id_erreur BIGINT NOT NULL AUTO_INCREMENT,
    date_erreur TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    code_sql VARCHAR(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    message_erreur TEXT COLLATE utf8mb4_unicode_ci NOT NULL,
    procedure_source VARCHAR(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,

    PRIMARY KEY (id_erreur)

) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_unicode_ci;
