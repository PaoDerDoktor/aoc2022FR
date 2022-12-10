# --- Partie Deux ---

Satisfaits de la couverture arboricole disponible, les elfes ont maintenant seulement besoin de connaître le meilleur endroit pour construire leur cabane : ils voudraient pouvoir y voir *beaucoup d'arbres*.

Pour mesurer la distance de vue depuis un arbre, regardez en haut, en bas, à gauche et à droite de cet arbre, et arrêtez vous si vous atteignez une bordure ou un arbre plus grand ou de la même taille que votre arbre actuel (si un arbre est pile sur la bordure, au moins l'une de ses distances de vue sera donc de zéro).

Les elfes se fichent des arbres lointains plus grands que ceux trouvés en suivant la règle ci-dessus : le modèle ce cabane qu'ils proposent d'utiliser possède de grands [avant-toits](https://i.pinimg.com/736x/53/6c/8e/536c8e8aa2c9e12bf9755cf5afb8a2a5--pvc.jpg) pour la garder au sec, ils ne pourraient donc même pas voir plus haut que la maison de toute manière.

Dans l'exemple ci-dessus, considérez le `5` au milieu de la seconde ligne :

<code><pre>30373
25<em>5</em>12
65332
33549
35390</pre></code>

- En regardant vers le haut, sa vue n ést pas bloquée : on peut y voir *`1`* arbre (d'une hauteur de `3`).
- En regardant à gauche, sa vue est immédiatement bloquée : on ne peut y voir qu'*`1`* arbre (d'une hauteur de `5`, juste à côté de lui).
- En regardant à droite, sa vue n'est pas bloquée : on peut y voir *`2`* arbres.
- En regardant vers le bas, sa vue est bloquée à un moment : on peut y voir *`2`*  arbres (un d'une hauteur de `3`, puis l'arbre d'une hauteur de `5` qui bloque la vue).

Le *score scénique* d'un arbre est trouvé en *multipliant ensemble* ses distances de vue dans chacune des quatre directions. Pour cet arbre, il est de *`4`* (trouvé en multipliant ``1 * 1 * 2 * 2``).

Cependant, vous pouvez faire encore mieux : considérez l'arbre de taille `5` au milieu de la quatrième ligne :

<code><pre>30373
25512
65332
33<em>5</em>49
35390</pre></code>

- En regardant vers le haut, sa vue est bloquée à *`2`* arbres (par un autre arbre de taille `5`).
- En regardant à gauche, sa vue n'est pas bloquée : on peut y voir *`2`* arbres.
- En regardant à droite, sa vue est bloquée à *`2`* arbres (pas un immense arbre de taille `9`).
- En regardant vers le bas, sa vue n'est pas bloquée, on peut y voir *`1`* arbre.

Ceci donne à l'arbre en question un score scénique de *`8`* (``2 * 2 * 1 * 2``) : il  s'agit de la meilleure place pour la cabane arboricole.

Prenez en compte tous les arbres de votre carte. *Quel est le plus grand score scénique possible parmi tous les arbres ?*
