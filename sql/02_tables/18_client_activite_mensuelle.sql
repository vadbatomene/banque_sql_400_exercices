
USE banque_exercice;

-- Table : client_activite_mensuelle
-- Description : suit l'activité mensuelle des clients.

CREATE TABLE client_activite_mensuelle (
    id_client INT NOT NULL,
    mois DATE NOT NULL,
    nb_transactions INT NOT NULL DEFAULT '0',
    montant_entrant DECIMAL(18,2) NOT NULL DEFAULT '0.00',
    montant_sortant DECIMAL(18,2) NOT NULL DEFAULT '0.00',
    actif TINYINT(1) NOT NULL DEFAULT '0',
    segment VARCHAR(30)
        COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Standard',

    PRIMARY KEY (id_client, mois),

    CONSTRAINT client_activite_mensuelle_ibfk_1
        FOREIGN KEY (id_client)
        REFERENCES client (id_client)

) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_unicode_ci;
