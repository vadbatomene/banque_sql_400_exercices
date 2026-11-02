
USE banque_exercice;

-- Table : appel_conseiller
-- Description : enregistre les appels des conseillers aux clients.

CREATE TABLE appel_conseiller (
    id_appel BIGINT NOT NULL AUTO_INCREMENT,
    id_employe INT NOT NULL,
    id_client INT DEFAULT NULL,
    date_appel DATETIME NOT NULL,
    duree_secondes INT NOT NULL,
    abouti TINYINT(1) NOT NULL DEFAULT '0',
    motif ENUM(
        'vente',
        'suivi',
        'reclamation',
        'recouvrement',
        'information'
    ) COLLATE utf8mb4_unicode_ci NOT NULL,

    PRIMARY KEY (id_appel),

    KEY id_employe (id_employe),
    KEY id_client (id_client),
    KEY idx_appel_date (date_appel),

    CONSTRAINT appel_conseiller_ibfk_1
        FOREIGN KEY (id_employe)
        REFERENCES employe (id_employe),

    CONSTRAINT appel_conseiller_ibfk_2
        FOREIGN KEY (id_client)
        REFERENCES client (id_client)

) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_unicode_ci;
