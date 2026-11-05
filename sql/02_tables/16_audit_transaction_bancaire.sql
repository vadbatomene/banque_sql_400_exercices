
USE banque_exercice;

-- Table : audit_transaction_bancaire
-- Description : conserve les informations des transactions auditées.

CREATE TABLE audit_transaction_bancaire (
    id_audit BIGINT NOT NULL AUTO_INCREMENT,
    id_transaction INT NOT NULL,
    id_compte INT NOT NULL,
    montant DECIMAL(12,2) NOT NULL,
    type_transaction VARCHAR(50)
        COLLATE utf8mb4_unicode_ci NOT NULL,
    date_transaction DATETIME NOT NULL,
    utilisateur VARCHAR(128)
        COLLATE utf8mb4_unicode_ci NOT NULL,
    date_audit TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (id_audit),

    KEY idx_audit_tx_date (date_audit),
    KEY idx_audit_tx_compte (id_compte)

) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_unicode_ci;
