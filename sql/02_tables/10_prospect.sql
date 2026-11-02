USE banque_exercice;

CREATE TABLE prospect (
    id_prospect INT NOT NULL,
    nom VARCHAR(100) COLLATE utf8mb4_unicode_ci NOT NULL,
    agence_id INT NOT NULL,
    date_creation DATE NOT NULL,
    source VARCHAR(40) COLLATE utf8mb4_unicode_ci NOT NULL,
    statut ENUM('nouveau', 'contacte', 'converti', 'perdu')
        COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'nouveau',
    id_client_converti INT DEFAULT NULL,
    produit_interet VARCHAR(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,

    PRIMARY KEY (id_prospect),

    KEY fk_prospect_agence (agence_id),
    KEY fk_prospect_client (id_client_converti),

    CONSTRAINT fk_prospect_agence
        FOREIGN KEY (agence_id)
        REFERENCES agence (id_agence),

    CONSTRAINT fk_prospect_client
        FOREIGN KEY (id_client_converti)
        REFERENCES client (id_client)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_unicode_ci;