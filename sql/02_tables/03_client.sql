
USE banque_exercice;

CREATE TABLE client (
    id_client INT NOT NULL,
    nom VARCHAR(100) COLLATE utf8mb4_unicode_ci NOT NULL,
    post_nom VARCHAR(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    prenom VARCHAR(45) COLLATE utf8mb4_unicode_ci NOT NULL,
    titre VARCHAR(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    date_naissance DATE NOT NULL,
    id_agence INT NOT NULL,

    PRIMARY KEY (id_client),

    KEY idx_client_agence (id_agence),

    CONSTRAINT fk_client_agence
        FOREIGN KEY (id_agence)
        REFERENCES agence (id_agence)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_unicode_ci;
