
USE banque_exercice;

-- Table : audit_acces
-- Description : conserve une trace des actions auditées.

CREATE TABLE audit_acces (
    id_audit BIGINT NOT NULL AUTO_INCREMENT,
    utilisateur VARCHAR(100)
        COLLATE utf8mb4_unicode_ci NOT NULL,
    action_auditee VARCHAR(50)
        COLLATE utf8mb4_unicode_ci NOT NULL,
    table_auditee VARCHAR(64)
        COLLATE utf8mb4_unicode_ci NOT NULL,
    date_action TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    details VARCHAR(255)
        COLLATE utf8mb4_unicode_ci DEFAULT NULL,

    PRIMARY KEY (id_audit)

) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_unicode_ci;
