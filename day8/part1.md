# --- Jour 8 : Cabane arboricole ---

L'expédition rencontre un groupe de grands arbres un peu particulier, tous plantés précisément sur une grille. Les elfes vous expliquent qu'une expédition précédente les a plantés dans un objectif de reforestation. À présents, ils sont curieux de savoir s'ils pourraient représenter un bon endroit pour une [cabane arboricole](https://fr.wikipedia.org/wiki/Maison_arboricole).

Premièrement, déterminez si il y a assez de couverture par les arbres ici pour *cacher* la cabane. Pour ce faire, vous devez compter le nombre d'arbres *visibles depuis en-dehors de la grille* en regardant directement une ligne ou une colonne.

Les elfes ont déjà lancé un [quadricoptère](https://fr.wikipedia.org/wiki/Quadrirotor) pour générer une carte présentant la hauteur de chaque arbre (l'entrée de votre puzzle). Par exemple :

```treeMap
30373
25512
65332
33549
35390
```

Chaque arbre est représenté par un entier dont la valeur est sa hauteur, où `0` est la plus faible et `9` la plus grande.

Un arbre est *visible* si tous les autres arbres entre lui et le bord de la grille sont *plus petits* que lui. Ne considérez que les arbres de la même ligne ou colonne, c'est-à-dire seulement au-dessus, en-dessous, à gauche ou à droite d'un arbre donné.

Chacun des arbres du bord de la grille sont *visibles* - puisqu'ils sont déjà sur la grille, aucun arbre ne bloque la vue. Dans cet exemple, ça ne laisse que les *neufs arbres de l'intérieur de la grille* à vérifier :

- Le `5` supérieur-gauche est *visible* depuis la gauche et le dessus (il n'est pas visible depuis la droite ou le bas puisque d'autres arbres de taille `5` sont sur le chemin).
- Le `5` supérieur-milieu est *visible* depuis le haut et la droite.
- Le `1` supérieur-droit n'est pas visible depuis aucune direction : pour qu'il soit visible, il aurait fallu qu'il n'y ait que des arbres de taille *`0`* entre lui et une bordure.
- Le `5` milieu-gauche est *visible*, mais seulement depuis la droite.
- Le `3` au centre n'est pas visible depuis aucune direction : pour qu'il soit visible, il aurait fallu qu'il n'y ait que des arbres d'une taille maximum de `2` entre lui et une bordure.
- Sur la rangée du bas, le `5` du milieu est *visible*, mais le `3` et le `4` ne le sont pas.

Avec 16 arbres visibles sur la bordure et 5 autres visibles à l'intérieur de la grille, un total de *`21`* arbres sont visibles dans cet arrangement.

Regardez votre carte. *Combien d'arbres sont visibles depuis en-dehors de la grille ?*
