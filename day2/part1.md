# --- Jour 2 : Pierre Feuille Ciseaux ---

Les elfes commencent à établir leur campement sur la plage. Pour décider de qui prendra la tente la plus proche du stockage à casse-croûtes, un tournoi géant de [Pierre Feuille Ciseaux](https://fr.wikipedia.org/wiki/Pierre-papier-ciseaux) est déjà en cours.

Pierre Feuille Ciseaux est un jeu à deux joueurs. Chaque partie contient plusieurs tours : à chaque tour, les joueurs choisissent simultanément la Pierre, le Papier ou les Ciseaux en mimant leur forme avec leur main. Ensuite, le gagnant de ce tour est sélectionné : La Pierre bats les Ciseaux, Les Ciseaux battent le Papier, et le Papier bats la Pierre. Si les deux joueurs choisissent la même forme, le tour se termine à la place en égalité.

Reconnaissant de votre aide d'hier, l'un des elfes vous donne un *guide de stratégie crypté* (l'entrée de votre puzzle), en disant qu'il est sûr que cela vous aidera à gagner. "La première colonne est ce que ton adversaire va jouer : `A` pour Pierre, `B` pour Papier et `C` pour Ciseaux. La deuxième colonne--" Soudain, l'elfe est appelé pour aider quelqu'un avec sa tente.

La seconde colonne, vous le supposez, est ce que vous devriez jouer en réponse : `X` pour Pierre, `Y` pour Papier et `Z` pour Ciseaux. gagner à chaque fois serait du genre à lever des soupçons, alors les réponses ont été scrupuleusement choisies.

le gagnant de ce tournoi est le joueur ayant obtenu le plus haut score. Votre *score total* est la somme de tous vous scores de chaque tour. Le score d'un tour est le score de *la forme que vous avez choisie* (1 pour Pierre, 2 pour Papier et 3 pour Ciseaux) additionné au score du *résultat du tour* (0 si vous avez perdu, 3 en cas d'égalité, 6 si vous avez gagné).

Puisque vous ne pouvez pas être sûr de si l'elfe essaie de vous aider ou de vous embobiner, vous devriez calculer le score que vous auriez si vous suiviez effectivement ce guide stratégique.

Par exemple, supposez que vous ayiez obtenu le guide stratégique suivant :

```rps
A Y
B X
C Z
```

Ce guide stratégique prédit et recommande ceci :

- Au premier tout, votre adversaire choisira Pierre (`A`), et vous devriez choisir Papier (`Y`). Ceci donne une victoire pour vous pour un score total de *`8`* (2 parce que vous avez choisi Papier + 6 parce que vous avez gagné).
- Au second tour, votre adversaire choisira Papier (`B`), et vous devriez choisir Pierre (`X`). Ceci donne un échec pour vous pour un score total de *`1`* (1 + 0).
- Le troisième tour est un cas d'égalité puisque les deux joueurs choisissent les Ciseaux, vous donnant un score total de 3 + 3 = *6*.

*Quel serait votre score total si tout se passait exactement selon votre guide stratégique ?*
