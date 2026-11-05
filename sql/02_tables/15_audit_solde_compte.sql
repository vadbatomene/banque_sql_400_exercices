
USE banque_exercice;

-- Table : audit_solde_compte
-- Description : conserve les modifications des soldes des comptes.

CREATE TABLE audit_solde_compte (
    id_audit BIGINT NOT NULL AUTO_INCREMENT,
    id_compte INT NOT NULL,
    ancien_solde DECIMAL(12,2) NOT NULL,
    nouveau_solde DECIMAL(12,2) NOT NULL,
    utilisateur VARCHAR(128)
        COLLATE utf8mb4_unicode_ci NOT NULL,
    date_action TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    details VARCHAR(255)
        COLLATE utf8mb4_unicode_ci DEFAULT NULL,

    PRIMARY KEY (id_audit),

    KEY idx_audit_solde_compte_date
        (id_compte, date_action)

) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_unicode_ci;
