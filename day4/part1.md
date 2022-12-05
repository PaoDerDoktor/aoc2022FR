# --- Jour 4 : Nettoyage du Camp ---

Le lieu doit être nettoyé avant que les dernières provisions puissent être déchargées du bateau, et plusieurs elfes se sont vus assigner un poste de nettoyage de sections du camp. Chaque section possède un *numéro d'identification* unique, et chaque elfe se voit assigner un intervalle d'identifiants de section.

Cependant, alors que certains des elfes comparent leurs assignations de sections les uns avec les autres, ils remarquent que beaucoup d'assignations se *superposent*. Pour essayer de trouver rapidement les superpositions et réduire les efforts dupliqués, les elfes se regroupent en paire et forment une *grande liste des assignation de sections pour chaque paire* (l'entrée de votre puzzle).

Par exemple, considérez la liste de paires d'assignations de sections suivante :

```assignationList
2-4,6-8
2-3,4-5
5-7,7-9
2-8,3-7
6-6,4-6
2-6,4-8
```

Pour quelques-unes des premières paires, cette liste montre que :

- Dans la première paire d'elfes, le premier elfe s'est vu assigner les sections `2-4` (les sections `2`, `3` et `4`), alors que le deuxième elfe s'est vu assigner les sections `6-8` (`6`, `7` et `8`).
- Les elfes de la deuxième paire se sont vus assigner deux sections.
- Les elfes de la troisième paire se sont chacun vu assigner trois sections: l'un a eu les sections `5`, `6`, `7` alors que l'autre a aussi eu `7`, mais aussi `8` et `9`.

Cette liste d'exemple utilise des nombres à un seul chiffre pour les identifiants de section pour la rendre plus facile à écrire ; votre liste effective pourrait contenir des nombres plus grands. Visuellement, ces paires d'assignations de sections ressemblent à ceci :

```assignation
.234.....  2-4
.....678.  6-8

.23......  2-3
...45....  4-5

....567..  5-7
......789  7-9

.2345678.  2-8
..34567..  3-7

.....6...  6-6
...456...  4-6

.23456...  2-6
...45678.  4-8
```

Certaines des paires d'elfes ont remarqué que l'une de leur assignation contenait complètement l'autre. Par exemple, `2-8` contient complètement `3-7`, et `6-6` est complètement contenu dans `4-6`. Dans les paires où une assignation est complètement contenue dans l'autre, un elfe dans la paire pourrait nettoyer exclusivement les sections que leur partenaire aurait déjà nettoyé, il semble donc que cette situation mérite d'être reconsidérée. Dans l'exemple ci-dessus, on trouve *`2`* paires dans cette situation.

*Dans combien de paires d'assignations un intervalle contient-il complètement l'autre ?
