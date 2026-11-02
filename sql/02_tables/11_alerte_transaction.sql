
USE banque_exercice;

-- Table : alerte_transaction
-- Description : enregistre les alertes liées aux transactions bancaires.

CREATE TABLE alerte_transaction (
    id_alerte BIGINT NOT NULL AUTO_INCREMENT,
    id_transaction INT NOT NULL,
    niveau ENUM('SUSPECT','FRAUDE_CONFIRMEE')
        COLLATE utf8mb4_unicode_ci NOT NULL,
    raison VARCHAR(255)
        COLLATE utf8mb4_unicode_ci NOT NULL,
    date_alerte TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    statut_traitement ENUM('a_examiner','en_cours','cloturee')
        COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'a_examiner',
    commentaire VARCHAR(500)
        COLLATE utf8mb4_unicode_ci DEFAULT NULL,

    PRIMARY KEY (id_alerte),

    UNIQUE KEY uq_alerte_transaction_niveau
        (id_transaction, niveau),

    KEY idx_alerte_statut_date
        (statut_traitement, date_alerte)

) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_unicode_ci;
