USE banque_exercice;

CREATE TABLE remboursement_pret (
    id_remboursement BIGINT NOT NULL AUTO_INCREMENT,
    id_pret INT NOT NULL,
    numero_echeance INT NOT NULL,
    date_echeance DATE NOT NULL,
    date_paiement DATE DEFAULT NULL,
    montant_du DECIMAL(18,2) NOT NULL,
    montant_paye DECIMAL(18,2) NOT NULL DEFAULT '0.00',
    statut ENUM(
        'paye_a_temps',
        'paye_en_retard',
        'partiel',
        'impaye',
        'rembourse_anticipe'
    ) COLLATE utf8mb4_unicode_ci NOT NULL,

    PRIMARY KEY (id_remboursement),

    UNIQUE KEY uq_pret_echeance (id_pret, numero_echeance),

    KEY idx_remboursement_statut_date (statut, date_echeance),

    CONSTRAINT fk_rp_pret
        FOREIGN KEY (id_pret)
        REFERENCES pret (id_pret)
) ENGINE=InnoDB
  AUTO_INCREMENT=1024
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_unicode_ci;