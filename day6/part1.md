# --- Jour 6 : Problèmes de réglage ---

Les préparatifs sont enfin terminés. Les elfes et vous quittez donc le camp à pieds et commencez à trouver votre chemin vers le bosquet de fruit **étoilés**.

Pendant que vous avancez dans les denses broussailles, l'un des elfes vous donne un *appareil* portable. Il vous dit qu'il comporte beaucoup de super fonctionnalités, mais que le plus important pour le moment est de régler son *système de communication*.

Cependant, puisqu'il a entendu parler de votre expertises significative des [systèmes](https://adventofcode.com/2016/day/6) [de](https://adventofcode.com/2016/day/25) [communications](https://adventofcode.com/2019/day/7) [basés](https://adventofcode.com/2019/day/9) [sur](https://adventofcode.com/2019/day/16) [signaux](https://adventofcode.com/2021/day/25), il a convaincu les autres elfes qu'il serait avisé de vous donner leur seul appareil défectueux - bien sûr vous n'aurez aucun problème pour le réparer.

Comme s'il se trouvait inspiré par le timing comique, l'appareil se met à émettre des étincelles multicolores.

Pour pouvoir communiquer avec les elfes, votre appareil doit *se verrouiller sur leur signal*. Le signal est une série de caractères, ressemblant à une série aléatoire, que l'appareil reçoit un par un.

Pour réparer le système de communication, vous devrez ajouter une sous-routine à l'appareil capable de détecter un *marqueur de début de paquet* dans le flux de données. Dans le protocole utilisé par les elfes, le début d'un paquet est indiqué par une séquence de *quatre caractères, tous différents*.

L'appareil enverra à votre sous-routine un tampon correspondant au flux de données (l'entrée de votre puzzle). Votre sous-routine doit identifier la première position dans ce tampon où les quatre caractères reçus le plus récemment sont tous différents. Plus précisément, elle doit reporter le nombre de caractères entre le début du tampon et le dernier caractère de ce marqueur de quatre caractères.

Par exemple, supposez que vous ayez reçu le tampon de flux de données suivant :

```datastream
mjqjpqmgbljsphdztnvjfqwrcgsmlb
```

Après que les trois premiers caractères (`mjq`) aient été reçus, il n'y a pas assez de caractères pour trouver le marqueur. Le premier moment où un marqueur pourrait être présent est après que le quatrième caractère ait été reçu, ce qui fait des quatre caractères les plus récents les caractères `mjqj`. Puisque `j` est répété, ce n'est pas un marqueur.

La première fois qu'un marqueur apparaît est après que le *septième* caractère soit reçu. Une fois arrivé, les quatre derniers caractères sont `jpqm`, qui sont tous différents. Dans ce cas, votre sous-routine doit renvoyer la valeur *`7`*, puisque le premier marqueur de début de paquet est complété après que 7 caractères soient traités.

Voici quelques autres exemples :

- `bvwbjplbgvbhsrlpgdmjqwftvncz` : premier marqueur après *`5`* caractères
- `nppdvjthqldpwncqszvftbrmjlhg` : premier marqueur après *`6`* caractères
- `nznrnfrfntjfmvfwmzdfjlvtqnbhcprsg` : premier marqueur après *`10`* caractères
- `zcfzfwzzqfrljwzlrfnpqdbhtmscgvjw` : premier marqueur après *`11`* caractères

*Combien de caractères doivent être traités avant que le premier marqueur de début de paquet ne soit détecté ?*
