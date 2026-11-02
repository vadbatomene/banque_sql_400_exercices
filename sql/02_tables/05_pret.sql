USE banque_exercice;

CREATE TABLE pret (
    id_pret INT NOT NULL,
    id_compte INT NOT NULL,
    typecredit VARCHAR(50) COLLATE utf8mb4_unicode_ci NOT NULL,
    montant DECIMAL(20,2) NOT NULL,
    taux DECIMAL(5,2) NOT NULL,
    date_debut DATE NOT NULL,
    statut ENUM('en_cours', 'solde', 'en_defaut', 'rejete')
        COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en_cours',
    date_echeance DATE DEFAULT NULL,
    date_cloture DATE DEFAULT NULL,
    patrimoine_garantie DECIMAL(20,2) NOT NULL DEFAULT '0.00',
    mensualite DECIMAL(18,2) NOT NULL DEFAULT '0.00',

    PRIMARY KEY (id_pret),

    KEY idx_pret_compte_date (id_compte, date_debut),
    KEY idx_pret_statut_date (statut, date_debut),

    CONSTRAINT fk_pret_compte
        FOREIGN KEY (id_compte)
        REFERENCES compte (id_compte),

    CONSTRAINT chk_pret_montant
        CHECK (montant > 0),

    CONSTRAINT chk_pret_taux
        CHECK (taux BETWEEN 1 AND 20)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_unicode_ci;