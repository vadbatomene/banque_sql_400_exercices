
USE banque_exercice;

CREATE TABLE transaction_bancaire (
    id_transaction INT NOT NULL,
    id_compte INT NOT NULL,
    montant DECIMAL(12,2) NOT NULL,
    date_transaction DATETIME NOT NULL,
    type VARCHAR(50) COLLATE utf8mb4_unicode_ci NOT NULL,
    canal ENUM('agence', 'ATM', 'mobile', 'web', 'TPE', 'agent')
        COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'agence',
    fraud_confirmed TINYINT(1) NOT NULL DEFAULT '0',
    fraud_score DECIMAL(5,2) NOT NULL DEFAULT '0.00',
    devise CHAR(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'CDF',

    PRIMARY KEY (id_transaction),

    KEY idx_transaction_compte_date (id_compte, date_transaction),
    KEY idx_transaction_type_date (type, date_transaction),
    KEY idx_transaction_fraude_date (fraud_confirmed, date_transaction),
    KEY idx_transaction_compte_montant (id_compte, montant),

    CONSTRAINT fk_transaction_compte
        FOREIGN KEY (id_compte)
        REFERENCES compte (id_compte)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_unicode_ci;
