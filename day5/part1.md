# --- Piles de provisions ---

L'expédition peut démarrer dès que les dernières provisions seront déchargées du bateau. Les provisions sont stockées dans des piles de *caisses* marquées, mais puisque les provisions nécessaires sont enterrées sous beaucoup d'autres caisses, elles doivent être réarrangées.

le bateau possède une *grue de chargement géante* capable de déplacer les caisses entre les piles. Pour s'assurer qu'aucune des caisses ne se fasse écraser ou ne tombe, la grutière les réarrangera en suivant une série d'étapes bien préparées avec soin. Après le réarrangement des caisses, les caisses requises seront au sommet de chaque pile.

Les elfes ne veulent pas interrompre la grutière pendant cette procédure délicate, mais ils ont oublié de lui demander *où chaque caisse se retrouvera, et ils souhaitent être prêts à les décharger aussi vite que possible afin de démarrer l'expédition.

Par contre, ils ont un dessin des piles de caisses de départ *et* la procédure de réarrangement (l'entrée de votre puzzle). Par exemple :

```cratesFull
    [D]    
[N] [C]    
[Z] [M] [P]
 1   2   3 

move 1 from 2 to 1
move 3 from 1 to 3
move 2 from 2 to 1
move 1 from 1 to 2
```

On peut traduire l'instruction "`move 1 from 2 to 1`" en "`déplacer 1 caisse depuis la pile 2 jusqu'à la pile 1`".

Dans cet exemple, il y a trois piles de caisses. La pile 1 contient deux caisses : la caisse `Z` est au fond, et la caisse `N` est au sommet. La pile 2 contient trois caisses, de haut en bas `M`, `C` et `D`. Enfin, la pile 3 contient une seule caisse, `P`.

Ensuite, vous pouvez trouver la procédure de réarrangement. À chaque étape de la procédure, une quantité donnée de caisses est déplacée d'une pile donnée à une autre pile donnée. Dans la première étape de la procédure de réarrangement ci-dessus, une caisse est déplacée de la pile 2 à la pile 1, donnant cette nouvelle configuration :

```cratesStacks
[D]        
[N] [C]    
[Z] [M] [P]
 1   2   3 
```

À la seconde étape, trois caisses sont déplacées de la pile 1 à la pile 3. Les caisses sont déplacées *une à la fois*, la première caisse à être déplacée (`D`) termine donc en-dessous de la deuxième et de la troisième caisse :

```cratesStacks
        [Z]
        [N]
    [C] [D]
    [M] [P]
 1   2   3
```

Ensuite, deux caisses sont déplacées de la pile 2 à la pile 1. À nouveau, puisque les caisses sont déplacées *une à la fois*, la caisse `C` termine en-dessous de la caisse `M` :

```cratesStacks
        [Z]
        [N]
[M]     [D]
[C]     [P]
 1   2   3
```

Enfin, une caisse est déplacée de la pile 1 à la pile 2 :

<code><pre>        [<em>Z</em>]
        [N]
        [D]
[<em>C</em>] [<em>M</em>] [P]
 1   2   3</pre></code>

Les elfes ont seulement besoin de savoir *quelle caisse finit au sommet de chacune des piles* ; dans cet exemple, les caisses au sommet sont `C` dans la pile 1, `M` dans la pile 2 et `Z` dans la pile 3, vous pouvez donc les combiner ensemble et donner aux elfes le message *`CMZ`*.

*Après que la procédure de réarrangement se soit terminée, quelle caisse termine au sommet de chacune des piles ?*
