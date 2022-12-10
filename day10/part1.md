# --- Jour 10 : Tube Cathodique ---

Vous évitez les cordes, plongez dans la rivière, et nagez vers la berge.

Les elfes vous crient quelque chose dont vous discernez le sujet : se retrouver en amont de la rivière. Malheureusement, la rivière est trop bruyante pour les comprendre exactement. Ils terminent leur traversée du pont et disparaissent de votre champs de vision.

Les situations comme celles-ci doivent être la raison pour laquelle les elfes ont priorisé l'installation de leur système de communication sur votre appareil portable. Vous le sortez de votre paquetage, mais la quantité d'eau se déversant lentement d'une grosse fissure sur l'écran vous font vous dire qu'il n'est pas vraiment prêt pour un usage immédiat.

*À moins que*, en réalité, vous soyez capable de construire un système vidéo de rechange pour votre appareil ! Il semble qu'il soit composé d'un [écran cathodique](https://fr.wikipedia.org/wiki/Tube_cathodique) et d'un processeur basique, tous deux pilotés par un *circuit d'horloge* précis. Cette horloge possède une cadence constante : chaque unité de temps est appelé un *cycle*.

Commencez par trouver le signal envoyé par le processeur. Le processeur possède un unique registre, `X`, qui démarre avec une valeur de `1`. Il supporte seulement deux instruction s:

- ``addx V`` prends *deux cycles* à se faire. *Après* deux cycles, le registre `X` prends en addition la valeur `V` (`V` peut être une valeur négative).
- ``noop`` prends *un cycle* à se faire. Elle n'a pas d'autre effet.

Le processeur utilise ces instructions dans un programme (l'entrée de votre puzzle) pour, d'une manière ou d'une autre, dire à l'écran ce qu'il doit afficher.

Prenez, par exemple, le petit programme suivant :

```crtcpu
noop
addx 3
addx -5
```

L'exécution du programme se fait comme suit :

- Au début du premier cycle, l'instruction ``noop`` commence à s'exécuter. Pendant ce premier cycle, `X` vaut `1`. Après le premier cycle, l'instruction ``noop`` se termine, en n'ayant rien fait.
- Au début du second cycle, l'instruction ``addx 3`` commence à s'exécuter. Durant le second cycle, `X` vaut toujours `1`.
- Pendant le troisième cycle, `X` vaut toujours `1`. Après ce troisième cycle, l'instruction ``addx 3`` finit de s'exécuter, mettant `X` à `4`.
- Au début du quatrième cycle, l'instruction ``addx -5`` commence à s'exécuter. Pendant le quatrième cycle, la valeur de `X` est toujours `4`.
- Pendant le cinquième cycle, `X` vaut toujours `4`. Après le cinquième cycle, l'instruction ``addx -5`` finit de s'exécuter, mettant `X` à `-1`.

Peut-être pouvez-vous apprendre quelque chose en regardant la valeur du registre `X` pendant l'exécution. Pour le moment, considérez la *force du signal* (le numéro de cycle multiplié par la valeur du registre `X`) *pendant* le 20ème cycle, puis tous les 40 cycles après ça (c'est-à-dire durant les cycles 20, 60, 100, 140, 180, 220).

Par exemple, prenez cet exemple plus grand :

```crtcpu
addx 15
addx -11
addx 6
addx -3
addx 5
addx -1
addx -8
addx 13
addx 4
noop
addx -1
addx 5
addx -1
addx 5
addx -1
addx 5
addx -1
addx 5
addx -1
addx -35
addx 1
addx 24
addx -19
addx 1
addx 16
addx -11
noop
noop
addx 21
addx -15
noop
noop
addx -3
addx 9
addx 1
addx -3
addx 8
addx 1
addx 5
noop
noop
noop
noop
noop
addx -36
noop
addx 1
addx 7
noop
noop
noop
addx 2
addx 6
noop
noop
noop
noop
noop
addx 1
noop
noop
addx 7
addx 1
noop
addx -13
addx 13
addx 7
noop
addx 1
addx -33
noop
noop
noop
addx 2
noop
noop
noop
addx 8
noop
addx -1
addx 2
addx 1
noop
addx 17
addx -9
addx 1
addx 1
addx -3
addx 11
noop
noop
addx 1
noop
addx 1
noop
noop
addx -13
addx -19
addx 1
addx 3
addx 26
addx -30
addx 12
addx -1
addx 3
addx 1
noop
noop
noop
addx -9
addx 18
addx 1
addx 2
noop
noop
addx 9
noop
noop
noop
addx -1
addx 2
addx -37
addx 1
addx 3
noop
addx 15
addx -21
addx 22
addx -6
addx 1
noop
addx 2
addx 1
noop
addx -10
noop
noop
addx 20
addx 1
addx 2
addx 2
addx -6
addx -11
noop
noop
noop
```

Les forces de signal intéressantes peuvent être déterminées comme ceci :

- Durant le 20ème cycle, le registre `X` vaut `21`, la force du signal est donc de 20 \* 21 = *`420`* (le 20ème cycle a lieu au milieu de l'exécution de la deuxième instruction `addx -1`, la valeur du registre est donc la valeur de départ `1` à laquelle on ajoute toutes les autres valeurs de `addx` jusqu'ici : 1 + 15 - 11 + 6 - 3 + 5 - 1 - 8 + 13 + 4 = 21.)
- Pendant le 60ème cycle, le registre `X` vaut `19`, la force du signal est donc 60 \* 19 = *`1140`*.
- Pendant le 100ème cycle, le registre `X` vaut `18`, la force du signal est donc 100 \* 18 = *`1800`*.
- Pendant le 140ème cycle, le registre `X` vaut `21`, la force du signal est donc 140 \* 21 = *`2940`*.
- Pendant le 180ème cycle, le registre `X` vaut `16`, la force du signal est donc 180 \* 16 = *`2880`*.
- Pendant le 220ème cycle, le registre `X` vaut `18`, la force du signal est donc 220 \* 18 = *`3960`*.

La somme de ces forces vaut *`13140`*.

Trouvez les forces de signal pendant les 20ème, 60ème, 100ème, 140ème, 180ème et 220ème cycles. *Quelle est la somme de ces six forces de signal ?*
