# --- Partie Deux ---

Il semblerait que le registre `X` controlle la position horizontale d'un [sprite](https://fr.wikipedia.org/wiki/Sprite_(jeu_vid%C3%A9o)). Plus précisément, le sprite fait 3 pixels de large, et le registre `X` représente la position horizontale du *milieu* de ce sprite (dans ce système de coordonnées, il n'y a pas de "position verticale" : si la position horizontale du sprite mets ces pixels à l'endroit où l'écran est en train d'afficher, alors ses pixels seront dessinés).

Vous comptez les pixels de l'écran cathodique : il y en a 40 en longueur et 6 en hauteur. Cet écran cathodique dessine *un pixel à chaque cycle*. Si l'on représente chaque pixel de l'écran par un `#`, voici les cycles durant lesquels le premier et le dernier pixel de chaque ligne sont dessinés :

<code><pre>Cycle   1 -> <em>#</em>######################################<em>#</em> <- Cycle  40
Cycle  41 -> <em>#</em>######################################<em>#</em> <- Cycle  80
Cycle  81 -> <em>#</em>######################################<em>#</em> <- Cycle 120
Cycle 121 -> <em>#</em>######################################<em>#</em> <- Cycle 160
Cycle 161 -> <em>#</em>######################################<em>#</em> <- Cycle 200
Cycle 201 -> <em>#</em>######################################<em>#</em> <- Cycle 240</pre></code>

Ainsi, en [chronométrant](https://en.wikipedia.org/wiki/Racing_the_Beam) [précisément](https://www.youtube.com/watch?v=sJFnWZH5FXc) les instructions du processeur et les opérations de rendu de l'écran cathodique, vous devriez être capable de déterminer si le sprite est visible à l'instant où chacun des pixels est rendu. Si un sprite est positionné de telle manière à ce que l'un de ces trois pixels soit le pixel en train d'être rendu par l'écran, l'écran produit un pixel *allumé* (`#`). Sinon, il laisse un pixel *éteint* (`.`).

Les quelques premiers pixels du grand exemple ci-dessus sont rendus ainsi :

```crtReport
Sprite position: ###.....................................

Start cycle   1: begin executing addx 15
During cycle  1: CRT draws pixel in position 0
Current CRT row: #

During cycle  2: CRT draws pixel in position 1
Current CRT row: ##
End of cycle  2: finish executing addx 15 (Register X is now 16)
Sprite position: ...............###......................

Start cycle   3: begin executing addx -11
During cycle  3: CRT draws pixel in position 2
Current CRT row: ##.

During cycle  4: CRT draws pixel in position 3
Current CRT row: ##..
End of cycle  4: finish executing addx -11 (Register X is now 5)
Sprite position: ....###.................................

Start cycle   5: begin executing addx 6
During cycle  5: CRT draws pixel in position 4
Current CRT row: ##..#

During cycle  6: CRT draws pixel in position 5
Current CRT row: ##..##
End of cycle  6: finish executing addx 6 (Register X is now 11)
Sprite position: ..........###...........................

Start cycle   7: begin executing addx -3
During cycle  7: CRT draws pixel in position 6
Current CRT row: ##..##.

During cycle  8: CRT draws pixel in position 7
Current CRT row: ##..##..
End of cycle  8: finish executing addx -3 (Register X is now 8)
Sprite position: .......###..............................

Start cycle   9: begin executing addx 5
During cycle  9: CRT draws pixel in position 8
Current CRT row: ##..##..#

During cycle 10: CRT draws pixel in position 9
Current CRT row: ##..##..##
End of cycle 10: finish executing addx 5 (Register X is now 13)
Sprite position: ............###.........................

Start cycle  11: begin executing addx -1
During cycle 11: CRT draws pixel in position 10
Current CRT row: ##..##..##.

During cycle 12: CRT draws pixel in position 11
Current CRT row: ##..##..##..
End of cycle 12: finish executing addx -1 (Register X is now 12)
Sprite position: ...........###..........................

Start cycle  13: begin executing addx -8
During cycle 13: CRT draws pixel in position 12
Current CRT row: ##..##..##..#

During cycle 14: CRT draws pixel in position 13
Current CRT row: ##..##..##..##
End of cycle 14: finish executing addx -8 (Register X is now 4)
Sprite position: ...###..................................

Start cycle  15: begin executing addx 13
During cycle 15: CRT draws pixel in position 14
Current CRT row: ##..##..##..##.

During cycle 16: CRT draws pixel in position 15
Current CRT row: ##..##..##..##..
End of cycle 16: finish executing addx 13 (Register X is now 17)
Sprite position: ................###.....................

Start cycle  17: begin executing addx 4
During cycle 17: CRT draws pixel in position 16
Current CRT row: ##..##..##..##..#

During cycle 18: CRT draws pixel in position 17
Current CRT row: ##..##..##..##..##
End of cycle 18: finish executing addx 4 (Register X is now 21)
Sprite position: ....................###.................

Start cycle  19: begin executing noop
During cycle 19: CRT draws pixel in position 18
Current CRT row: ##..##..##..##..##.
End of cycle 19: finish executing noop

Start cycle  20: begin executing addx -1
During cycle 20: CRT draws pixel in position 19
Current CRT row: ##..##..##..##..##..

During cycle 21: CRT draws pixel in position 20
Current CRT row: ##..##..##..##..##..#
End of cycle 21: finish executing addx -1 (Register X is now 20)
Sprite position: ...................###..................
```

Exécuter le programme mène à la création de cette image sur l'écran :

```crtDisplay
##..##..##..##..##..##..##..##..##..##..
###...###...###...###...###...###...###.
####....####....####....####....####....
#####.....#####.....#####.....#####.....
######......######......######......####
#######.......#######.......#######.....
```

Faites rendre l'image par votre programme. *Quelles sont les huit lettres capitales qui apparaissent sur votre écran cathodique ?*
