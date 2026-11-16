
CREATE TABLE `produit_revenu_mensuel` (
  `mois` date NOT NULL,
  `id_agence` int NOT NULL,
  `id_produit` int NOT NULL,
  `nb_contrats` int NOT NULL DEFAULT '0',
  `revenu_frais` decimal(18,2) NOT NULL DEFAULT '0.00',
  `revenu_interets` decimal(18,2) NOT NULL DEFAULT '0.00',
  `cout_service` decimal(18,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`mois`,`id_agence`,`id_produit`),
  KEY `id_agence` (`id_agence`),
  KEY `id_produit` (`id_produit`),
  CONSTRAINT `produit_revenu_mensuel_ibfk_1`
    FOREIGN KEY (`id_agence`) REFERENCES `agence` (`id_agence`),
  CONSTRAINT `produit_revenu_mensuel_ibfk_2`
    FOREIGN KEY (`id_produit`) REFERENCES `produit_bancaire` (`id_produit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
