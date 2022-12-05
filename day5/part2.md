# --- Partie Deux ---

Alors que vous regardez la grutière réarranger les caisses d'une manière experte, vous remarquez que le processus ne se déroule pas selon vos prédictions.

De la boue recouvrait un peu l'écriture sur le côté de la grue, et vous l'essuyez rapidement. La grue n'est pas un *DéplaceCaisse 9000* - C'est un *DéplaceCaisse 9001* !

Le DéplaceCaisse 9001 est remarquable par beaucoup de nouvelles et excitantes fonctionnalités : l'air conditionné, des sièges en cuit, un porte-verre supplémentaire, et *la capacité de récupérer et déplacer plusieurs caisses à la fois*.

Toujours en suivant l'exemple ci-dessus, les caisses démarrent dans la même situation :

```cratesStacks
    [D]    
[N] [C]    
[Z] [M] [P]
 1   2   3
```

Déplacer une seule caisse de la pile 2 à la pile 1 donne le même résultat qu'auparavant :

```cratesStacks
[D]        
[N] [C]    
[Z] [M] [P]
 1   2   3
```

Cependant, l'action de déplacer trois caisses de la pile 1 à la pile 3 signifie maintenant que les trois caisses déplacées *conserrent leur ordre*, résultant en cette nouvelle configuration :

```cratesStacks
        [D]
        [N]
    [C] [Z]
    [M] [P]
 1   2   3
```

Ensuite, alors que les deux caisses sont déplacées de la pile 2 à la pile 1, elles *retiennent leur ordre* également :

```cratesStacks
        [D]
        [N]
[C]     [Z]
[M]     [P]
 1   2   3
```

Enfin, une seule caisse est toujours déplacée de la pile 1 à la pile 2, mais c'est désormais la caisse `C` qui est déplacée :

<code><pre>        [<em>D</em>]
        [N]
        [Z]
[<em>M</em>] [<em>C</em>] [P]
 1   2   3</pre></code>

Dans cet exemple, le DéplaceCaisse 9001 a terminé en mettant les caisses dans ordre complètement différent : *`MCD`*.

Avant que le processus de réarrangement ne se termine, mettez à jour votre simulation afin que les elfes sachent où se placer pour être prêts à décharger la dernière caisse de provisions. *Après que la procédure de réarrangement se soit terminée, quelle caisse termine au sommet de chacune des piles ?*
