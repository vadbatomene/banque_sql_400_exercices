
CREATE TABLE `transaction_archive` (
  `id_transaction` int NOT NULL,
  `id_compte` int NOT NULL,
  `montant` decimal(12,2) NOT NULL,
  `date_transaction` datetime NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `canal` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fraud_confirmed` tinyint(1) DEFAULT NULL,
  `fraud_score` decimal(5,2) DEFAULT NULL,
  `devise` char(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_archivage` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_transaction`),
  KEY `idx_archive_date` (`date_transaction`),
  KEY `idx_archive_compte` (`id_compte`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
