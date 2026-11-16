# Table : indicateur_agence_journalier

## 1. Rôle
Cette table conserve les indicateurs quotidiens d'activité de chaque agence bancaire.

## 2. Structure des colonnes
- `date_indicateur` : date à laquelle les indicateurs sont calculés.
- `id_agence` : identifiant de l'agence concernée.
- `nb_transactions` : nombre de transactions réalisées.
- `nb_clients_actifs` : nombre de clients actifs.
- `credits_cdf` : montant total des crédits en CDF.
- `debits_cdf` : montant total des débits en CDF.
- `volume_absolu_cdf` : volume absolu des opérations en CDF.
- `ticket_moyen_cdf` : montant moyen des transactions en CDF.

## 3. Clé primaire
La clé primaire est composée de deux colonnes :
- `date_indicateur`
- `id_agence`

Cela permet d'avoir un seul enregistrement par agence et par date.

## 4. Relation
- `id_agence` référence `agence(id_agence)`.

## 5. Valeurs par défaut
Les indicateurs numériques sont initialisés à zéro lorsqu'aucune valeur n'est fournie.