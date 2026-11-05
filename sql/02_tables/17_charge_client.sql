
USE banque_exercice;

-- Table : charge_client
-- Description : associe les employés aux clients qu'ils prennent en charge.

CREATE TABLE charge_client (
    id_employe INT NOT NULL,
    id_client INT NOT NULL,
    date_affectation DATE NOT NULL,
    date_fin DATE DEFAULT NULL,

    PRIMARY KEY (
        id_employe,
        id_client,
        date_affectation
    ),

    KEY fk_cc_client (id_client),

    CONSTRAINT fk_cc_client
        FOREIGN KEY (id_client)
        REFERENCES client (id_client),

    CONSTRAINT fk_cc_employe
        FOREIGN KEY (id_employe)
        REFERENCES employe (id_employe)

) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_unicode_ci;
