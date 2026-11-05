-- =====================================================
-- Table : esg_agence_mensuel
-- Description : Indicateurs ESG mensuels par agence
-- =====================================================

CREATE TABLE esg_agence_mensuel (
    mois DATE NOT NULL,
    id_agence INT NOT NULL,
    nb_contrats_numeriques INT NOT NULL DEFAULT 0,
    nb_contrats_total INT NOT NULL DEFAULT 0,
    energie_kwh DECIMAL(14,2) NOT NULL DEFAULT 0.00,
    emissions_kgco2 DECIMAL(14,2) NOT NULL DEFAULT 0.00,
    financements_verts DECIMAL(18,2) NOT NULL DEFAULT 0.00,
    effectif_feminin INT NOT NULL DEFAULT 0,
    effectif_total INT NOT NULL DEFAULT 0,

    PRIMARY KEY (mois, id_agence),

    KEY id_agence (id_agence),

    CONSTRAINT esg_agence_mensuel_ibfk_1
        FOREIGN KEY (id_agence)
        REFERENCES agence (id_agence)

) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_unicode_ci;