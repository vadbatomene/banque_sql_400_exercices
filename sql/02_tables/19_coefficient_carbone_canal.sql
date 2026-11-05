-- =====================================================
-- Table : coefficient_carbone_canal
-- Description : Stocke les coefficients carbone par canal
-- =====================================================

CREATE TABLE coefficient_carbone_canal (
    canal VARCHAR(40) COLLATE utf8mb4_unicode_ci NOT NULL,
    kgco2_par_transaction DECIMAL(10,4) NOT NULL,
    justification VARCHAR(255) COLLATE utf8mb4_unicode_ci NOT NULL,

    PRIMARY KEY (canal)
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_unicode_ci;