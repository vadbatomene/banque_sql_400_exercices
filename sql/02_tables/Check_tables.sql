-- Verifier l'existence de 36 tables

WITH tables_attendues AS (
    SELECT 'agence' AS nom_table UNION ALL
    SELECT 'alerte_transaction' UNION ALL
    SELECT 'appel_conseiller' UNION ALL
    SELECT 'audit_acces' UNION ALL
    SELECT 'audit_solde_compte' UNION ALL
    SELECT 'audit_transaction_bancaire' UNION ALL
    SELECT 'campagne_marketing' UNION ALL
    SELECT 'charge_client' UNION ALL
    SELECT 'client' UNION ALL
    SELECT 'client_activite_mensuelle' UNION ALL
    SELECT 'coefficient_carbone_canal' UNION ALL
    SELECT 'compte' UNION ALL
    SELECT 'compte_produit' UNION ALL
    SELECT 'employe' UNION ALL
    SELECT 'esg_agence_mensuel' UNION ALL
    SELECT 'historique_agence_client' UNION ALL
    SELECT 'historique_solde_mensuel' UNION ALL
    SELECT 'hypothese_metier' UNION ALL
    SELECT 'incident_client' UNION ALL
    SELECT 'indicateur_agence_journalier' UNION ALL
    SELECT 'indice_marche_journalier' UNION ALL
    SELECT 'journal_erreur' UNION ALL
    SELECT 'metrique_systeme' UNION ALL
    SELECT 'parametre_metier' UNION ALL
    SELECT 'parametre_prudentiel_mensuel' UNION ALL
    SELECT 'pret' UNION ALL
    SELECT 'produit_bancaire' UNION ALL
    SELECT 'produit_parametre_historique' UNION ALL
    SELECT 'produit_revenu_mensuel' UNION ALL
    SELECT 'prospect' UNION ALL
    SELECT 'reclamation_client' UNION ALL
    SELECT 'remboursement_pret' UNION ALL
    SELECT 'revenu_charge_client' UNION ALL
    SELECT 'satisfaction_client' UNION ALL
    SELECT 'transaction_archive' UNION ALL
    SELECT 'transaction_bancaire'
)
SELECT
    t.nom_table,
    CASE
        WHEN information_schema.tables.table_name IS NOT NULL
        THEN 'EXISTE'
        ELSE 'MANQUANTE'
    END AS verification
FROM tables_attendues t
LEFT JOIN information_schema.tables
    ON information_schema.tables.table_schema = DATABASE()
    AND information_schema.tables.table_name = t.nom_table
    AND information_schema.tables.table_type = 'BASE TABLE'
ORDER BY t.nom_table;

-- Compter le nombre de tables
SELECT
    COUNT(*) AS nombre_tables
FROM information_schema.tables
WHERE table_schema = DATABASE()
AND table_type = 'BASE TABLE';

-- Verification des clés primaires



USE banque_exercice;

SELECT
    t.table_name AS nom_table,
    CASE
        WHEN p.cle_primaire IS NULL THEN 'SANS CLE PRIMAIRE'
        ELSE 'OK'
    END AS verification,
    p.cle_primaire
FROM information_schema.tables t
LEFT JOIN (
    SELECT
        table_schema,
        table_name,
        GROUP_CONCAT(
            column_name
            ORDER BY ordinal_position
        ) AS cle_primaire
    FROM information_schema.key_column_usage
    WHERE constraint_name = 'PRIMARY'
    GROUP BY table_schema, table_name
) p
    ON p.table_schema = t.table_schema
    AND p.table_name = t.table_name
WHERE t.table_schema = DATABASE()
  AND t.table_type = 'BASE TABLE'
ORDER BY t.table_name;

-- Verifications des clés étrangèreset


USE banque_exercice;

SELECT
    table_name AS table_enfant,
    constraint_name AS nom_contrainte,
    column_name AS colonne,
    referenced_table_name AS table_parente,
    referenced_column_name AS colonne_reference
FROM information_schema.key_column_usage
WHERE table_schema = DATABASE()
  AND referenced_table_name IS NOT NULL
ORDER BY table_name, constraint_name, ordinal_position;

-- Verifications des index


USE banque_exercice;

SELECT
    table_name AS nom_table,
    index_name AS nom_index,
    CASE
        WHEN non_unique = 0 THEN 'UNIQUE'
        ELSE 'NON UNIQUE'
    END AS type_index,
    GROUP_CONCAT(
        column_name
        ORDER BY seq_in_index
    ) AS colonnes
FROM information_schema.statistics
WHERE table_schema = DATABASE()
GROUP BY
    table_name,
    index_name,
    non_unique
ORDER BY
    table_name,
    index_name;
    
    
-- Verifications des colonnes


USE banque_exercice;

SELECT
    table_name AS nom_table,
    ordinal_position AS position,
    column_name AS nom_colonne,
    column_type AS type_donnee,
    is_nullable AS accepte_null,
    column_default AS valeur_defaut,
    extra AS attributs
FROM information_schema.columns
WHERE table_schema = DATABASE()
ORDER BY table_name, ordinal_position;

-- Verifications des check


USE banque_exercice;

SELECT
    tc.table_name AS nom_table,
    tc.constraint_name AS nom_contrainte,
    cc.check_clause AS regle
FROM information_schema.table_constraints tc
JOIN information_schema.check_constraints cc
    ON tc.constraint_schema = cc.constraint_schema
    AND tc.constraint_name = cc.constraint_name
WHERE tc.constraint_schema = DATABASE()
  AND tc.constraint_type = 'CHECK'
ORDER BY tc.table_name, tc.constraint_name;

-- Verifications de contraintes unique


USE banque_exercice;

SELECT
    tc.table_name AS nom_table,
    tc.constraint_name AS nom_contrainte,
    GROUP_CONCAT(
        kcu.column_name
        ORDER BY kcu.ordinal_position
    ) AS colonnes_concernees
FROM information_schema.table_constraints tc
JOIN information_schema.key_column_usage kcu
    ON tc.constraint_schema = kcu.constraint_schema
    AND tc.table_name = kcu.table_name
    AND tc.constraint_name = kcu.constraint_name
WHERE tc.constraint_schema = DATABASE()
  AND tc.constraint_type = 'UNIQUE'
GROUP BY
    tc.table_name,
    tc.constraint_name
ORDER BY tc.table_name;

-- Verifications de moteurs et de charset


USE banque_exercice;

SELECT
    table_name AS nom_table,
    engine AS moteur,
    table_collation AS interclassement
FROM information_schema.tables
WHERE table_schema = DATABASE()
  AND table_type = 'BASE TABLE'
ORDER BY table_name;

-- Vérification du nombre de tables et de leur moteur


USE banque_exercice;

SELECT
    COUNT(*) AS nombre_tables,
    SUM(engine = 'InnoDB') AS tables_innodb,
    SUM(engine <> 'InnoDB' OR engine IS NULL) AS autres_moteurs
FROM information_schema.tables
WHERE table_schema = DATABASE()
  AND table_type = 'BASE TABLE';
