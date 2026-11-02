USE banque_exercice;

CREATE TABLE produit_bancaire (
    id_produit INT NOT NULL,
    code_produit VARCHAR(20) COLLATE utf8mb4_unicode_ci NOT NULL,
    nom_produit VARCHAR(80) COLLATE utf8mb4_unicode_ci NOT NULL,
    categorie ENUM(
        'epargne',
        'placement',
        'assurance',
        'credit',
        'paiement'
    ) COLLATE utf8mb4_unicode_ci NOT NULL,
    taux_remuneration DECIMAL(5,2) NOT NULL DEFAULT '0.00',
    frais_mensuels DECIMAL(10,2) NOT NULL DEFAULT '0.00',

    PRIMARY KEY (id_produit),

    UNIQUE KEY code_produit (code_produit)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_unicode_ci;