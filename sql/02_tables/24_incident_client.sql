
-- =====================================================
-- Table : incident_client
-- Description : Enregistre les incidents liés aux clients
-- =====================================================

USE banque_exercice;

CREATE TABLE incident_client (
    id_incident BIGINT NOT NULL AUTO_INCREMENT,
    id_client INT NOT NULL,
    date_incident DATE NOT NULL,
    type_incident ENUM(
        'decouvert',
        'retard_pret',
        'opposition',
        'litige',
        'fraude',
        'reclamation',
        'autre'
    ) COLLATE utf8mb4_unicode_ci NOT NULL,
    gravite ENUM(
        'faible',
        'moyenne',
        'elevee',
        'critique'
    ) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'faible',
    resolu TINYINT(1) NOT NULL DEFAULT '0',
    date_resolution DATE DEFAULT NULL,
    cout_estime DECIMAL(16,2) NOT NULL DEFAULT '0.00',
    source_simulation VARCHAR(100) COLLATE utf8mb4_unicode_ci
        NOT NULL DEFAULT 'regle pedagogique',

    PRIMARY KEY (id_incident),
    KEY id_client (id_client),
    KEY idx_incident_date_type (date_incident, type_incident),

    CONSTRAINT incident_client_ibfk_1
        FOREIGN KEY (id_client)
        REFERENCES client (id_client)

) ENGINE=InnoDB
  AUTO_INCREMENT=1095
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_unicode_ci;
