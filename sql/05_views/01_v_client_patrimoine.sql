
USE banque_exercice;

CREATE OR REPLACE VIEW v_client_patrimoine AS
SELECT
    cl.id_client,
    cl.nom,
    cl.post_nom,
    cl.prenom,
    cl.id_agence,
    COALESCE(SUM(co.solde), 0) AS patrimoine_comptes
FROM client cl
LEFT JOIN compte co
    ON co.id_client = cl.id_client
GROUP BY
    cl.id_client,
    cl.nom,
    cl.post_nom,
    cl.prenom,
    cl.id_agence;
