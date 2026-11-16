# Table : indice_marche_journalier

## 1. Rôle
Cette table conserve l'historique quotidien des indices de marché utilisés dans les simulations et analyses financières.

## 2. Structure des colonnes
- `date_cotation` : date à laquelle l'indice a été relevé.
- `indice` : nom ou code de l'indice de marché.
- `valeur` : valeur de l'indice à la date de cotation.
- `rendement_pct` : rendement journalier de l'indice exprimé en pourcentage.

## 3. Clé primaire
La clé primaire est composée de :
- `date_cotation`
- `indice`

Elle garantit qu'un même indice ne possède qu'une seule cotation par jour.

## 4. Valeur par défaut
- `rendement_pct` prend la valeur `0.0000` si aucune valeur n'est fournie.