
CREATE TABLE `produit_parametre_historique` (
  `id_param` bigint NOT NULL AUTO_INCREMENT,
  `id_produit` int NOT NULL,
  `date_effet` date NOT NULL,
  `taux_remuneration` decimal(7,4) NOT NULL DEFAULT '0.0000',
  `frais_mensuels` decimal(14,2) NOT NULL DEFAULT '0.00',
  `hypothese` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_param`),
  UNIQUE KEY `uq_produit_date` (`id_produit`,`date_effet`),
  CONSTRAINT `produit_parametre_historique_ibfk_1`
    FOREIGN KEY (`id_produit`)
    REFERENCES `produit_bancaire` (`id_produit`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
