# --- Partie Deux ---

Alors que vous grimpez la colline, vous suspectez les elfes de vouloir transformer ce trajet de rassemblement en randonnée. Le départ n'est pas très panoramique, cela dit. Peut-être devriez-vous trouver un meilleur point de départ ?

Pour maximiser l'exercice en randonnant, le chemin devrait commencé aussi bas que possible : élévation `a`. Le but est toujours a case marquée `E`. Cependant, le chemin devrait toujours être direct, en faisant le minimum d'étapes. Ainsi, vous devrez trouver le plus court chemin entre *n'importe quelle case d'élévation `a`* jusqu'à la case marquée `E`.

Une fois de plus, prenons l'exemple d'au-dessus :

<pre><code><em>S</em>abqponm
abcryxxl
accsz<em>E</em>xk
acctuvwj
abdefghi</code></pre>

Désormais, il y a six choix de positions de départ (cinq marquées d'un `a`, plus la case marquée d'un `S`, qui compte toujours comme état d'élévation `a`). Si vous démarrez au coin inférieur-gauche, vous pourrez atteindre le plus rapidement possible le point `E` :

```hillMoves
...v<<<<
...vv<<^
...v>E^^
.>v>>>^^
>^>>>>>^
```

Ce chemin atteint le but en *`29`* étapes, c'est le plus court possible.

*Quel est le plus petit nombre d'étapes requises pour vous déplacer de n'importe quelle case d'élévation `a` vers 'endroit qui devrait offrir le plus de signal ?*
