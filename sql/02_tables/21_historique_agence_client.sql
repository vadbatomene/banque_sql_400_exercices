-- =====================================================
-- Table : historique_agence_client
-- Description : Historique des affectations des clients
--               aux agences
-- =====================================================
use banque_exercice;
CREATE TABLE historique_agence_client (
    id_historique BIGINT NOT NULL AUTO_INCREMENT,
    id_client INT NOT NULL,
    id_agence INT NOT NULL,
    date_debut DATE NOT NULL,
    date_fin DATE DEFAULT NULL,
    motif VARCHAR(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,

    PRIMARY KEY (id_historique),

    KEY fk_hac_agence (id_agence),
    KEY idx_historique_agence_client (id_client, date_debut),

    CONSTRAINT fk_hac_agence
        FOREIGN KEY (id_agence)
        REFERENCES agence (id_agence),

    CONSTRAINT fk_hac_client
        FOREIGN KEY (id_client)
        REFERENCES client (id_client)

) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_unicode_ci;