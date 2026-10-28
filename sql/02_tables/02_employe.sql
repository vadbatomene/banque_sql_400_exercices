USE banque_exercice;

CREATE TABLE employe (
    id_employe INT NOT NULL,
    id_agence INT NOT NULL,
    nom VARCHAR(100) COLLATE utf8mb4_unicode_ci NOT NULL,
    poste VARCHAR(100) COLLATE utf8mb4_unicode_ci NOT NULL,
    salaire_mensuel DECIMAL(12,2) NOT NULL DEFAULT '650000.00',
    date_embauche DATE DEFAULT NULL,
    marge_brute_mensuelle DECIMAL(14,2) NOT NULL DEFAULT '0.00',

    PRIMARY KEY (id_employe),

    KEY fk_employe_agence (id_agence),

    CONSTRAINT fk_employe_agence
        FOREIGN KEY (id_agence)
        REFERENCES agence (id_agence)
);
