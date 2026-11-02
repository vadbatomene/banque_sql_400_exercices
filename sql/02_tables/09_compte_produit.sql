USE banque_exercice;

CREATE TABLE compte_produit (
    id_compte INT NOT NULL,
    id_produit INT NOT NULL,
    date_souscription DATE NOT NULL,
    date_resiliation DATE DEFAULT NULL,
    statut ENUM('actif', 'resilie', 'suspendu')
        COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'actif',

    PRIMARY KEY (id_compte, id_produit),

    KEY fk_cp_produit (id_produit),

    CONSTRAINT fk_cp_compte
        FOREIGN KEY (id_compte)
        REFERENCES compte (id_compte),

    CONSTRAINT fk_cp_produit
        FOREIGN KEY (id_produit)
        REFERENCES produit_bancaire (id_produit)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_unicode_ci;