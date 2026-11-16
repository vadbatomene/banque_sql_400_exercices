-- =====================================================
-- Table : historique_solde_mensuel
-- Description : Historique mensuel des soldes des comptes
-- =====================================================

CREATE TABLE historique_solde_mensuel (
    id_compte INT NOT NULL,
    mois DATE NOT NULL,
    solde_fin_mois DECIMAL(14,2) NOT NULL,

    PRIMARY KEY (id_compte, mois),

    CONSTRAINT fk_hsm_compte
        FOREIGN KEY (id_compte)
        REFERENCES compte (id_compte)

) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_unicode_ci;