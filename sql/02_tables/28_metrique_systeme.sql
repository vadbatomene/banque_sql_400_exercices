
CREATE TABLE `metrique_systeme` (
  `date_mesure` datetime NOT NULL,
  `service` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disponibilite_pct` decimal(5,2) NOT NULL,
  `temps_reponse_ms` int NOT NULL,
  `incidents` int NOT NULL DEFAULT '0',
  `transactions_traitees` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`date_mesure`,`service`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
