
USE banque_exercice;

CREATE TABLE compte (
    id_compte INT NOT NULL,
    id_client INT NOT NULL,
    type VARCHAR(50) COLLATE utf8mb4_unicode_ci NOT NULL,
    solde DECIMAL(12,2) NOT NULL DEFAULT '0.00',
    date_ouverture DATE NOT NULL,
    id_agence_ouverture INT DEFAULT NULL,
    date_cloture DATE DEFAULT NULL,
    statut_compte ENUM('actif', 'ferme', 'bloque')
        COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'actif',
    region VARCHAR(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,

    PRIMARY KEY (id_compte),

    KEY idx_compte_client_type (id_client, type),
    KEY fk_compte_agence_ouverture (id_agence_ouverture),
    KEY idx_compte_client_solde (id_client, solde),
    KEY idx_compte_statut_cloture (statut_compte, date_cloture),

    CONSTRAINT fk_compte_agence_ouverture
        FOREIGN KEY (id_agence_ouverture)
        REFERENCES agence (id_agence),

    CONSTRAINT fk_compte_client
        FOREIGN KEY (id_client)
        REFERENCES client (id_client),

    CONSTRAINT chk_compte_type
        CHECK (type IN ('courant', 'epargne', 'mobile'))
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_unicode_ci;
