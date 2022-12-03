# --- Jour 3 : organisation de sac à dos ---

Un elfe est chargé de l'important travail de charger tous les [sacs à dos](https://fr.wikipedia.org/wiki/Sac_%C3%A0_dos) avec des provisions pour le voyage dans la jungle. Malheureusement, cet elfe n'a pas suivi les instructions de chargement, et quelques objets doivent maintenant être réarrangés.

Chaque sac à dos possède deux grands *compartiments*. Chaque objet d'un type donné est sensé aller dans un seul de ces deux compartiments. L'elfe qui a préparé les sacs n'a pas suivi cette règle pour exactement un type d'objet par sac à dos.

Les elfes ont fait une liste de tous les objets présents actuellement dans chaque sac à dos. Chaque type d'objet est identifié par une seule lettre en majuscule ou en minuscule (ce qui veut dire que `a` et `A` font références à des objets de types différents).

La liste des objets d'un sac à dos est donnée en tant que liste de caractères sur une seule ligne. Un sac à dos donné a toujours le même nombre d'objets dans chacun de ses deux compartiments. Ainsi, la première moitié de la ligne de caractères représente le premier compartiment, et la deuxième moitié de la liste de caractères représente le second compartiment.

Par exemple, supposez que vous ayez la liste suivante des contenus de six sacs à dos :

```rucksacks
vJrwpWtwJgWrhcsFMMfFFhFp
jqHRNqRjqzjGDLGLrsFMfFZSrLrFZsSL
PmmdzqPrVvPwwTWBwg
wMqvLMZHhHMvwLHjbvcjnnSBnvTQFn
ttgJtRGJQctTZtZT
CrZsJsPPZsGzwwsLwLmpwMDw
```

- Le premier sac à dos contient les objets `vJrwpWtwJgWrhcsFMMfFFhFp`, ce qui signifie que le premier compartiment contient les objets `vJrwpWtwJgWr`, alors que le deuxième compartiment contient les objets `hcsFMMfFFhFp`. Le seul type d'objet qui apparaît dans les deux compartiments est le *`p`* minuscule.
- Les compartiments du deuxième sac à dos contiennent `jqHRNqRjqzjGDLGL` et `rsFMfFZSrLrFZsSL`. le seul type d'objet contenu dans les deux compartiments est le *`L`* majuscule.
- Les compartiments du troisième sac à dos contiennent `PmmdzqPrV` et `vPwwTWBwg`, le seul type d'objet commun aux deux compartiment étant le *`P`* majuscule.
- Les compartiments du quatrième sac à dos ne partagent que le type d'objet *`v`*.
- Les compartiments du cinquième sac à dos ne partagent que le type d'objet *`t`*.
- Les compartiments du sixième sac à dos ne partagent que le type d'objet *`s`*.

Pour aider à prioriser le réarrangement des objets, chaque type d'objet peut être converti en sa *priorité* :

- Les types d'objets en minuscules de `a` jusqu'à `z` ont des priorités allant de 1 à 26.
- Les types d'objets en majuscule de `A` jusqu'à `Z` ont des priorités allant de 27 à 52.

Dans l'exemple ci-dessus, la liste de priorité des types d'objets apparaissant dans les deux compartiments de chaque sac à dos est 16 (`p`), 38 (`L`), 42 (`P`), 22 (`v`), 20 (`t`) et 19 (`s`). La somme de cette liste est *`157`*.

Trouvez les types d'objets qui apparaissent dans les deux compartiments de chacun des sac à dos. *Quelle est la somme des priorités de ces types d'objet ?*
