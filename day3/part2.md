# --- Partie Deux ---

Alors que vous finissez d'identifier les objets mal placés, les elfes vous approchent avec un autre problème.

Pour des raisons de sécurité, les elfes sont divisés en groupe de 3. Chaque elfe porte un badge qui identifie leur groupe. Pour être efficace, dans chaque groupe de trois elfes, le badge est le *seul type d'objet porté par l'ensemble des trois elfes*. C'est à dire que si le badge d'un groupe est le type d'objet `B`, alors les trois elfes du groupes auront le type d'objet `B` quelque part dans leur sac `s dos, et au plus deux des elfes porteront chacun des autres types d'objets.

Le problème est que quelqu'un a oublié de mettre les autocollants d'authenticité mis à jour de cette année sur les badges. Tous les badges doivent donc être sortis des sacs à dos pour que les nouveaux autocollants d'authenticité puissent y être attachés.

De plus, personne n'a écrit quel type d'objet correspond au badge de chaque groupe. La seule manière de savoir quel type d'objet est le bon est de trouver le type d'objet *commun aux trois elfes* de chacun des groupes.

Chaque ensemble de trois lignes dans votre liste corresponds à un seul groupe, mais chaque groupe peut avoir un type d'objet différent pour badge. Ainsi, dans l'exemple ci-dessus, les sacs à dos du premier groupe sont les trois lignes suivantes :

```rucksacks
vJrwpWtwJgWrhcsFMMfFFhFp
jqHRNqRjqzjGDLGLrsFMfFZSrLrFZsSL
PmmdzqPrVvPwwTWBwg
```

Et les sacs à dos du deuxième groupe sont les trois lignes suivantes :

```rucksacks
wMqvLMZHhHMvwLHjbvcjnnSBnvTQFn
ttgJtRGJQctTZtZT
CrZsJsPPZsGzwwsLwLmpwMDw
```

Dans le premier groupe, le seul type d'objet qui apparaît dans chacun des trois sacs à dos est le `r` minuscule : il s'agit de leur badge. Dans le deuxième groupe, leur badge doit être `Z`.

Les priorités de ces objets doivent être trouvées pour organiser la pose des autocollants : ici, ces priorités sont 18 (`r`) pour le premier groupe et 52 (`Z`) pour le second groupe. La somme de ces priorités donne *`70`*.

Trouvez le type d'objet correspondant au type de badge de chacun des groupes de trois elfes. *Quelle est la somme des priorités de ces types d'objets ?*
