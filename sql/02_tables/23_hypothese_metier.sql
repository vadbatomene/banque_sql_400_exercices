-- =====================================================
-- Table : hypothese_metier
-- Description : Documentation des hypothèses métier
-- =====================================================

CREATE TABLE hypothese_metier (
    code_hypothese VARCHAR(50) COLLATE utf8mb4_unicode_ci NOT NULL,
    domaine VARCHAR(80) COLLATE utf8mb4_unicode_ci NOT NULL,
    description_hypothese VARCHAR(500) COLLATE utf8mb4_unicode_ci NOT NULL,
    valeur_retenue VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    statut ENUM('simulee', 'a_valider', 'externe_requise')
        COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'simulee',
    commentaire VARCHAR(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,

    PRIMARY KEY (code_hypothese)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_unicode_ci;