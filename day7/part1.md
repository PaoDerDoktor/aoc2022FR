# --- Jour 7 : Pas d'espace libre sur le disque ---

Vous pouvez entendre des oiseaux chantonner et des gouttes de pluie tomber sur des feuilles pendant que l'expédition se poursuit. Parfois, vous pouvez même entendre des bruits encore plus forts, au loin. À quel point les animaux sont ils grands ici, d'ailleurs ?

En tout cas, l'appareil des elfes a d'autres problèmes que son système de communication. Vous essayez mettre son système à jour :

```elfOS
$ mise-a-jour-systeme --s-il-te-plait --s-il-te-plait-avec-du-sucre-dessus
Erreur: Pas d'espace libre sur le disque
```

Peut-être pourriez-vous supprimer certains fichiers afin de faire de la place pour la mise-à-jour ?

Vous naviguez à travers le système de fichiers pour vous rendre compte de la situation et sauvegardez a sortie de terminal résultante (l'entrée de votre puzzle). Par exemple :

```elfOS
$ cd /
$ ls
dir a
14848514 b.txt
8504156 c.dat
dir d
$ cd a
$ ls
dir e
29116 f
2557 g
62596 h.lst
$ cd e
$ ls
584 i
$ cd ..
$ cd ..
$ cd d
$ ls
4060174 j
8033020 d.log
5626152 d.ext
7214296 k
```

Le système de fichiers consiste en un arbre de fichiers (données binaires) et de dossiers (qui contiennent d'autres dossiers ou des fichiers). Le plus haut des dossiers, la racine de l'arbre, est appelé `/`. Vous pouvez naviguer dans le système de fichiers, vous déplaçant dans ou en-dehors des dossiers et listant le contenu du dossier dans lequel vous êtes actuellement.

Dans la sortie de terminal, les lignes démarrant par `$` sont les *commandes que vous exécutez*, similairement à la plupart des ordinateurs modernes :

- `cd` signifie *`change directory`* ("changement de dossier" en français). Cette commande change quel dossier est le dossier actuel, le résultat spécifique dépendant de l'argument de la commande :
  - ``cd x`` permet de se déplacer `dans` un niveau : il cherche dans le dossier actuel un dossier nommé `x` et en fait le dossier actuel.
  - ``cd ..`` se déplace `en-dehors` d'un niveau : il trouve le dossier qui contient le dossier actuel et en fait le dossier actuel.
  - ``cd /`` permet de faire du dossier-racine `/` le dossier actuel.
- `ls` signifie *`list`* ("liste" en français, tout simplement). Cette commande affiche tous les fichiers et tous les dossiers contenus immédiatement dans le dossier actuel :
  - ``123 abc`` signifie que le dossier actuel contient un fichier nommé `abc` d'une taille de `123`.
  - ``dir xyz`` signifie que le dossier actuel contient un dossier nommé `xyz`

Étant donné les commandes et les sorties de l'exemple ci-dessus, vous pouvez déterminer que le système de fichiers ressemble visuellement à ça :

```tree
- / (dir)
  - a (dir)
    - e (dir)
      - i (file, size=584)
    - f (file, size=29116)
    - g (file, size=2557)
    - h.lst (file, size=62596)
  - b.txt (file, size=14848514)
  - c.dat (file, size=8504156)
  - d (dir)
    - j (file, size=4060174)
    - d.log (file, size=8033020)
    - d.ext (file, size=5626152)
    - k (file, size=7214296)
```

Ici, on trouve quatre dossiers : `/` (le dossier-racine), `a` et `d` (qui sont dans `/`), et `e` (qui est dans `a`). Ces dossiers contiennent aussi des fichiers de différentes tailles.

Puisque le disque est plein, la première étape devrait être de trouver les dossiers qui seraient de bons candidats pour la suppression. Pour ce faire, vous devez déterminer la *taille totale* de chaque dossier. La taille totale d'un dossier est la somme des tailles des fichiers qu'il contient, directement ou indirectement (les dossiers en eux-mêmes ne comptent pas comme ayant une taille intrinsèque).

Les tailles totales des dossiers ci-dessus peuvent être trouvées comme suit :

- La taille totale du dossier `e` est *584* puisqu'il ne contient qu'un seul fichier `i` de taille 584 et aucun autre sous-dossier.
- Le dossier `a` a pour taille totale *94853* puisqu'il contient les fichiers `f` (de taille 29116), `g` (de taille 2557), et `h.lst` (de taille 62596), ainsi que le fichier `i` indirectement (`a` contient `e`, qui contient `i`).
- Le dossier `d` a une taille totale de *24933642*.
- En tant que dossier-racine, `/` contient tous les fichiers. Sa taille totale est de *48381165*, la somme des tailles de tous les fichiers.

Pour commencer, trouvez tous les dossiers ayant une taille totale *d'au plus 100000*, puis calculez la somme de leurs tailles totales. Dans l'exemple ci-dessus, ces dossiers sont `a` et `e`, et la somme de leur tailles totales est *`95437`* (94853 + 584). Comme dans cet exemple, ce procédé peut compter certains fichiers plus d'une fois !

Trouvez tous les dossiers avec une taille totale d'au plus 100000. *Quelle est la somme des tailles totales de ces fichiers ?*
