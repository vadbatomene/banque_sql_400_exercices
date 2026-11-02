
USE banque_exercice;

-- Table : campagne_marketing
-- Description : enregistre les campagnes marketing et leurs performances.

CREATE TABLE campagne_marketing (
    id_campagne INT NOT NULL,
    nom_campagne VARCHAR(120) COLLATE utf8mb4_unicode_ci NOT NULL,
    canal ENUM(
        'email',
        'sms',
        'agence',
        'reseaux_sociaux',
        'telephone',
        'web'
    ) COLLATE utf8mb4_unicode_ci NOT NULL,
    date_debut DATE NOT NULL,
    date_fin DATE NOT NULL,
    budget DECIMAL(16,2) NOT NULL DEFAULT '0.00',
    cout_reel DECIMAL(16,2) NOT NULL DEFAULT '0.00',
    nb_cibles INT NOT NULL DEFAULT '0',
    nb_ouvertures INT NOT NULL DEFAULT '0',
    nb_clics INT NOT NULL DEFAULT '0',
    nb_conversions INT NOT NULL DEFAULT '0',
    revenu_attribue DECIMAL(18,2) NOT NULL DEFAULT '0.00',
    hypothese VARCHAR(255) COLLATE utf8mb4_unicode_ci NOT NULL,

    PRIMARY KEY (id_campagne)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_unicode_ci;
