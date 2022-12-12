# --- Jour 12 : Algorithme d'escalade de colline ---

Vous essayez de contacter les elfes en utilisant votre appareil portable, mais la rivière que vous suivez est trop basse pour capter un signal de qualité normale.

Vous demandez à votre appareil de vous montrer une carte topographique de la zone (l'entrée de votre puzzle). La carte topographique montre la zone locale depuis le ciel, sur une grille : la hauteur de terrain de chaque case de la grille est donnée par une lettre minuscule, où `a` est le niveau le plus bas, `b` le suivant, et ainsi de suite jusqu'à `z`, le niveau le plus haut.

Votre carte indique aussi votre position actuelle (`S`) et la position où vous devriez pouvoir trouver le meilleur signal (`E`). Votre position actuelle (`S`) est d'élévation `a`, tandis que l'emplacement au meilleur signal (`E`) est d'élévation `z`.

Vous aimeriez atteindre `E`, mais pour économiser votre énergie, vous devriez le faire en *le moins d'étapes possible*. À chaque étape, vous pouvez vous déplacer d'exactement une case en haut, en bas, à gauche ou à droite. Pour éviter d'avoir besoin à sortir votre matériel d'escalade, au sein d'un mouvement, la hauteur de la case de destination d'un mouvement peut être *au plus une valeur plus haute* que celle de votre case de départ. Pour résumer, si votre hauteur actuelle est de `m`, vous pouvez monter à une élévation de `n`, mais pas à une élévation de `o` (cela signifie également que l'élévation de votre case de destination peut être bien plus basse que celle de votre case de départ).

Par exemple :

<pre><code><em>S</em>abqponm
abcryxxl
accsz<em>E</em>xk
acctuvwj
abdefghi</code></pre>

Ici, vous démarrez dans le coin supérieur-gauche, votre but est près du milieu. Vous pourriez commencer par vous déplacer à gauche ou à droite, mais vous devez dans tous les cas vous diriger vers le `e` en-dessous. Depuis là-bas, vous pouvez tourner en spirale autour du but :

```hillMoves
v..v<<<<
>v.vv<<^
.>vv>E^^
..v>>>^^
..>>>>>^
```

Dans le diagramme ci-dessus, les symboles indiquent si le chemin sort de chaque case par le haut (`^`), le bas (`v`), la gauche (`<`) ou la droite (`>`). L'emplacement qui devrait offrir le meilleur signal est toujours noté `E`, et `.` marque les cases non-visitées.

Ce chemin atteint la destination finale en *`31`* étapes, le plus bas nombre d'étapes possibles.

*Quel est le plus bas nombre d'étapes requises pour vous déplacer de votre position actuelle vers l'endroit qui devrait offrir le meilleur signal ?*
