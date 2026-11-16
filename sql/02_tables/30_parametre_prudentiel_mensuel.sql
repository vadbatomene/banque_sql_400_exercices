
CREATE TABLE `parametre_prudentiel_mensuel` (
  `mois` date NOT NULL,
  `fonds_propres` decimal(20,2) NOT NULL,
  `actifs_ponderes_risque` decimal(20,2) NOT NULL,
  `actifs_liquides` decimal(20,2) NOT NULL,
  `sorties_nettes_30j` decimal(20,2) NOT NULL,
  `exposition_totale` decimal(20,2) NOT NULL,
  `provisions_npl` decimal(20,2) NOT NULL,
  `encours_npl` decimal(20,2) NOT NULL,
  `actifs_moyens` decimal(20,2) NOT NULL,
  `produits_interets` decimal(20,2) NOT NULL,
  `charges_interets` decimal(20,2) NOT NULL,
  `charges_exploitation` decimal(20,2) NOT NULL,
  `produits_exploitation` decimal(20,2) NOT NULL,
  `hypothese` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`mois`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
