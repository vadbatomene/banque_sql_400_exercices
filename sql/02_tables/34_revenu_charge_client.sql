
CREATE TABLE `revenu_charge_client` (
  `id_revenu` bigint NOT NULL AUTO_INCREMENT,
  `id_client` int NOT NULL,
  `mois` date NOT NULL,
  `salaire` decimal(14,2) NOT NULL DEFAULT '0.00',
  `autres_revenus` decimal(14,2) NOT NULL DEFAULT '0.00',
  `charges_fixes` decimal(14,2) NOT NULL DEFAULT '0.00',
  `patrimoine_estime` decimal(20,2) NOT NULL DEFAULT '0.00',
  `source_revenu` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'emploi',
  PRIMARY KEY (`id_revenu`),
  UNIQUE KEY `uq_revenu_client_mois` (`id_client`,`mois`),
  KEY `idx_revenu_client_mois` (`id_client`,`mois`),
  CONSTRAINT `fk_rc_client`
    FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`)
) ENGINE=InnoDB AUTO_INCREMENT=8192 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
