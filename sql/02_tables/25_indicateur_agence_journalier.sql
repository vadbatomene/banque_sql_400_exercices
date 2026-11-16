
-- =====================================================
-- Table : indicateur_agence_journalier
-- Description : Indicateurs journaliers par agence
-- =====================================================

USE banque_exercice;

CREATE TABLE indicateur_agence_journalier (
    date_indicateur DATE NOT NULL,
    id_agence INT NOT NULL,
    nb_transactions INT NOT NULL DEFAULT '0',
    nb_clients_actifs INT NOT NULL DEFAULT '0',
    credits_cdf DECIMAL(20,2) NOT NULL DEFAULT '0.00',
    debits_cdf DECIMAL(20,2) NOT NULL DEFAULT '0.00',
    volume_absolu_cdf DECIMAL(20,2) NOT NULL DEFAULT '0.00',
    ticket_moyen_cdf DECIMAL(20,2) NOT NULL DEFAULT '0.00',

    PRIMARY KEY (date_indicateur, id_agence),

    KEY fk_iad_agence (id_agence),

    CONSTRAINT fk_iad_agence
        FOREIGN KEY (id_agence)
        REFERENCES agence (id_agence)

) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_unicode_ci;
