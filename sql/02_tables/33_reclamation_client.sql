
CREATE TABLE `reclamation_client` (
  `id_reclamation` bigint NOT NULL AUTO_INCREMENT,
  `id_client` int NOT NULL,
  `id_agence` int NOT NULL,
  `date_ouverture` date NOT NULL,
  `date_resolution` date DEFAULT NULL,
  `categorie` enum('compte','carte','pret','transaction','digital','service','autre') COLLATE utf8mb4_unicode_ci NOT NULL,
  `statut` enum('ouverte','en_cours','resolue','rejetee') COLLATE utf8mb4_unicode_ci NOT NULL,
  `canal` enum('agence','telephone','email','web','mobile') COLLATE utf8mb4_unicode_ci NOT NULL,
  `nb_contacts` int NOT NULL DEFAULT '1',
  `satisfaction_post_resolution` tinyint DEFAULT NULL,
  PRIMARY KEY (`id_reclamation`),
  KEY `id_client` (`id_client`),
  KEY `id_agence` (`id_agence`),
  CONSTRAINT `reclamation_client_ibfk_1`
    FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`),
  CONSTRAINT `reclamation_client_ibfk_2`
    FOREIGN KEY (`id_agence`) REFERENCES `agence` (`id_agence`),
  CONSTRAINT `reclamation_client_chk_1`
    CHECK (
      (`satisfaction_post_resolution` IS NULL)
      OR (`satisfaction_post_resolution` BETWEEN 1 AND 5)
    )
) ENGINE=InnoDB AUTO_INCREMENT=100526 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
