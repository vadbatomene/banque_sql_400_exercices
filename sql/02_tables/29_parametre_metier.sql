
CREATE TABLE `parametre_metier` (
  `id_parametre` tinyint NOT NULL,
  `cdf_par_usd` decimal(12,4) NOT NULL,
  `usd_par_eur` decimal(12,4) NOT NULL,
  `usd_par_gbp` decimal(12,4) NOT NULL,
  `seuil_alerte_cdf` decimal(18,2) NOT NULL,
  `seuil_structuration_usd` decimal(12,2) NOT NULL,
  `fenetre_lcbft_jours` int NOT NULL,
  `age_min_client` int NOT NULL,
  `derniere_maj` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_parametre`),
  CONSTRAINT `parametre_metier_chk_1` CHECK (
    (`cdf_par_usd` > 0)
    AND (`usd_par_eur` > 0)
    AND (`usd_par_gbp` > 0)
  ),
  CONSTRAINT `parametre_metier_chk_2` CHECK (
    (`fenetre_lcbft_jours` > 0)
    AND (`age_min_client` >= 0)
  )
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
