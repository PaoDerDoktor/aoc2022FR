# aoc2021FR

Traduction française des énoncés de l'Advent of Code 2022

Lien vers le site original : <https://adventofcode.com/2022>

Le script `compile.bat` compile les fichiers *markdown* en *HTML partiel (.phtml)*, c'est-à-dire en HTML sans balises body/head/html etc.

Ceci fait, le script compile les fichier .phtml en fichiers complets .html, contenant deux sections contenant les deux parties du puzzle du jours (aux `id`s respectifs `translation_part_one` et `translation_part_two`).

Le script utilise [pandoc](https://pandoc.org). Il est notamment installable sous windows grâce au gestionnaire de paquets [chocolatey](https://chocolatey.org) :

```batch
choco install pandoc
```

Ou sur linux avec votre gestionnaire de paquet !

Amusez-vous bien, et joyeux Advent of Code !
