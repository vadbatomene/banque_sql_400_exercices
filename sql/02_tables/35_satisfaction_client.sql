
CREATE TABLE `satisfaction_client` (
  `id_satisfaction` bigint NOT NULL AUTO_INCREMENT,
  `id_client` int NOT NULL,
  `id_employe` int NOT NULL,
  `date_evaluation` date NOT NULL,
  `note` tinyint NOT NULL,
  `commentaire` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_satisfaction`),
  KEY `fk_sat_client` (`id_client`),
  KEY `fk_sat_employe` (`id_employe`),
  CONSTRAINT `fk_sat_client`
    FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`),
  CONSTRAINT `fk_sat_employe`
    FOREIGN KEY (`id_employe`) REFERENCES `employe` (`id_employe`),
  CONSTRAINT `chk_satisfaction_note`
    CHECK (`note` BETWEEN 1 AND 5)
) ENGINE=InnoDB AUTO_INCREMENT=526 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
