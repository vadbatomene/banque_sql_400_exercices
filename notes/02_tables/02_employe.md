# Table `employe`

## Objectif
La table `employe` stocke les informations relatives aux employés de la banque.

## Colonnes
- `id_employe` : identifiant unique de l'employé.
- `id_agence` : agence à laquelle l'employé est rattaché.
- `nom` : nom de l'employé.
- `poste` : poste occupé dans la banque.
- `salaire_mensuel` : salaire mensuel, avec une valeur par défaut de 650000.00.
- `date_embauche` : date d'embauche, qui peut être laissée vide.
- `marge_brute_mensuelle` : marge brute mensuelle attribuée à l'employé, avec une valeur par défaut de 0.00.

## Contraintes et index
- Clé primaire : `id_employe`.
- Index : `fk_employe_agence` sur `id_agence`.
- Clé étrangère : `id_agence` référence `agence(id_agence)`.

## Dépendance
La table `agence` doit être créée avant la table `employe`.

## Vérification
Après exécution du script SQL, utiliser `DESCRIBE employe;` pour vérifier les colonnes et leurs types.





