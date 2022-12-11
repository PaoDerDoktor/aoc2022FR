# --- Jour 11 : Le singe au milieu ---

Pendant que vous commencez enfin à remonter le long de la rivière, vous vous rendez compte que votre paquetage est bien plus léger que ce dont vous vous souvenez. Pile à ce moment là, un des objets de votre paquetage se met à voler au-dessus de votre tête. Des singes jouent [au toro](https://fr.wikipedia.org/wiki/Toro_(sport)) avec vos affaires manquantes !

Pour récupérer vos objets, vous allez devoir être capable de prédire où les singes lanceront vos objets. Après une observation minutieuse, vous remarquez que les singes se comportent selon *à quel point vous êtes inquiet pour chaque objet*.

Vous prenez des notes (l'entrée de votre puzzle) sur les objets que chaque singe possède actuellement, à quel point vous êtes inquiet pour l'intégrité de chacun de ces objets, et comment chaque singe prend une décision basée sur votre niveau d'inquiétude. Par exemple ::

```monkeysDef
Monkey 0:
  Starting items: 79, 98
  Operation: new = old * 19
  Test: divisible by 23
    If true: throw to monkey 2
    If false: throw to monkey 3

Monkey 1:
  Starting items: 54, 65, 75, 74
  Operation: new = old + 6
  Test: divisible by 19
    If true: throw to monkey 2
    If false: throw to monkey 0

Monkey 2:
  Starting items: 79, 60, 97
  Operation: new = old * old
  Test: divisible by 13
    If true: throw to monkey 1
    If false: throw to monkey 3

Monkey 3:
  Starting items: 74
  Operation: new = old + 3
  Test: divisible by 17
    If true: throw to monkey 0
    If false: throw to monkey 1
```

Chaque singe possède les attributs suivants :

- L'attribut ``Starting items`` ("Objets de départ") liste votre *niveau d'inquiétude* pour chaque objet que le signe détient actuellement, et définit l'ordre dans lequel il les inspectera.
- L'attribut `Operation` ("Opération") montre comment votre niveau d'inquiétude change quand le singe en question inspecte un objet (une opération comme ``new = old * 5`` ("nouveau = ancien \* 5") signifie que votre niveau d'inquiétude après que le signe ait inspecté l'objet sera cinq fois supérieur à celui que vous aviez avant qu'il ne le fasse).
- L'attribut `Test` ("Test" (plutôt facile normalement)) montre comment le singe utilise votre niveau d'inquiétude pour décider où l'objet est ensuite envoyé :
  - La clause commençant par ``If true`` ("si vrai") montre ce qu'il se passe pour un objet donné si le `Test` conclut à une validation
  - La clause commençant par ``If false`` ("si faux") montre ce qu'il se passe pour un objet donné si le `Test` conclut à une invalidation.

Après qu'un singe ait fini d'inspecter un objet mais avant de vérifier votre niveau d'inquiétude, le soulagement engendré par le fait que l'inspection de l'objet par le signe ne l'ait pas endommagé entraîne une *division par trois* (arrondie à l'entier inférieur) de votre niveau d'inquiétude.

Les singes inspectent et lancent les objets tour-à-tour. Pendant le *tour* d'un seul singe, il inspecte et lance tous les objets qu'il détient, un à la foi et dans l'ordre listé. Le signe `0` commence, puis vient le tour du singe `1`, et ainsi de suite jusqu'à ce que chaque singe et fait son tour. Le procédé au cours duquel chaque singe fait son tour une fois est appelé une *manche*.

Quand un singe lance un objet à un autre singe, l'objet termine *à la fin* de la liste d'objets du singe récepteur. Un singe peut commencer une manche sans aucun objet dans son inventaire, et finir par en inspecter et lancer un grand nombre quand vient son tour. Si un singe commence un tour sans détenir d'objet, son tour s'arrête.

Dans l'exemple ci-dessus, la première manche a lieu ainsi :

```monkeysRounds
Singe 0 :
    Le singe inspecte un objet associé à un niveau d'inquiétude de 79.
        Le niveau d'inquiétude est multiplié par 19, pour arriver à 1501.
        Le singe se lasse de cet objet. Le niveau d'inquiétude est divisé par 3, pour arriver à 500.
        Le niveau d'inquiétude actuel n'est pas divisible par 23.
        L'objet, avec un niveau d'inquiétude de 500, est envoyé au singe 3.
    Le singe inspecte un objet associé à un niveau d'inquiétude de 98.
        Le niveau d'inquiétude est multiplié par 19, pour arriver à 1862.
        Le singe se lasse de cet objet. Le niveau d'inquiétude est divisé par 3, pour arriver à 620.
        Le niveau d'inquiétude actuel n'est pas divisible par 23.
        L'objet, avec un niveau d'inquiétude de 620, est envoyé au singe 3.
Singe 1 :
    Le singe inspecte un objet associé à un niveau d'inquiétude de 54.
        Le niveau d'inquiétude est augmenté de 6, pour arriver à 60.
        Le singe se lasse de cet objet. Le niveau d'inquiétude est divisé par 3, pour arriver à 20.
        Le niveau d'inquiétude actuel n'est pas divisible par 19.
        L'objet, avec un niveau d'inquiétude de 20, est envoyé au singe 0.
    Le singe inspecte un objet associé à un niveau d'inquiétude de 65.
        Le niveau d'inquiétude est augmenté de 6, pour arriver à 71.
        Le singe se lasse de cet objet. Le niveau d'inquiétude est divisé par 3, pour arriver à 23.
        Le niveau d'inquiétude actuel n'est pas divisible par 19.
        L'objet, avec un niveau d'inquiétude de 23, est envoyé au singe 0.
    Le singe inspecte un objet associé à un niveau d'inquiétude de 75.
        Le niveau d'inquiétude est augmenté de 6, pour arriver à 81.
        Le singe se lasse de cet objet. Le niveau d'inquiétude est divisé par 3, pour arriver à 27.
        Le niveau d'inquiétude actuel n'est pas divisible par 19.
        L'objet, avec un niveau d'inquiétude de 27, est envoyé au singe 0.
    Le singe inspecte un objet associé à un niveau d'inquiétude de 74.
        Le niveau d'inquiétude est augmenté de 6, pour arriver à 80.
        Le singe se lasse de cet objet. Le niveau d'inquiétude est divisé par 3, pour arriver à 26.
        Le niveau d'inquiétude actuel n'est pas divisible par 19.
        L'objet, avec un niveau d'inquiétude de 26, est envoyé au singe 0.
Singe 2 :
    Le singe inspecte un objet associé à un niveau d'inquiétude de 79.
        Le niveau d'inquiétude est multiplié par lui-même, pour arriver à 6241.
        Le singe se lasse de cet objet. Le niveau d'inquiétude est divisé par 3, pour arriver à 2080.
        Le niveau d'inquiétude actuel est divisible par 13.
        L'objet, avec un niveau d'inquiétude de 2080, est envoyé au singe 1.
    Le singe inspecte un objet associé à un niveau d'inquiétude de 60.
        Le niveau d'inquiétude est multiplié par lui-même, pour arriver à 3600.
        Le singe se lasse de cet objet. Le niveau d'inquiétude est divisé par 3, pour arriver à 1200.
        Le niveau d'inquiétude actuel n'est pas divisible par 13.
        L'objet, avec un niveau d'inquiétude de 1200, est envoyé au singe 3.
    Le singe inspecte un objet associé à un niveau d'inquiétude de 97.
        Le niveau d'inquiétude est multiplié par lui-même, pour arriver à 9409.
        Le singe se lasse de cet objet. Le niveau d'inquiétude est divisé par 3, pour arriver à 3136.
        Le niveau d'inquiétude actuel n'est pas divisible par 13.
        L'objet, avec un niveau d'inquiétude de 3136, est envoyé au singe 3.
Singe 3 :
    Le singe inspecte un objet associé à un niveau d'inquiétude de 74.
        Le niveau d'inquiétude est augmenté de 3, pour arriver à 77.
        Le singe se lasse de cet objet. Le niveau d'inquiétude est divisé par 3, pour arriver à 25.
        Le niveau d'inquiétude actuel n'est pas divisible par 17.
        L'objet, avec un niveau d'inquiétude de 25, est envoyé au singe 1.
    Le singe inspecte un objet associé à un niveau d'inquiétude de 500.
        Le niveau d'inquiétude est augmenté de 3, pour arriver à 503.
        Le singe se lasse de cet objet. Le niveau d'inquiétude est divisé par 3, pour arriver à 167.
        Le niveau d'inquiétude actuel n'est pas divisible par 17.
        L'objet, avec un niveau d'inquiétude de 167, est envoyé au singe 1.
    Le singe inspecte un objet associé à un niveau d'inquiétude de 620.
        Le niveau d'inquiétude est augmenté de 3, pour arriver à 623.
        Le singe se lasse de cet objet. Le niveau d'inquiétude est divisé par 3, pour arriver à 207.
        Le niveau d'inquiétude actuel n'est pas divisible par 17.
        L'objet, avec un niveau d'inquiétude de 207, est envoyé au singe 1.
    Le singe inspecte un objet associé à un niveau d'inquiétude de 1200.
        Le niveau d'inquiétude est augmenté de 3, pour arriver à 1203.
        Le singe se lasse de cet objet. Le niveau d'inquiétude est divisé par 3, pour arriver à 401.
        Le niveau d'inquiétude actuel n'est pas divisible par 17.
        L'objet, avec un niveau d'inquiétude de 401, est envoyé au singe 1.
    Le singe inspecte un objet associé à un niveau d'inquiétude de 3136.
        Le niveau d'inquiétude est augmenté de 3, pour arriver à 3139.
        Le singe se lasse de cet objet. Le niveau d'inquiétude est divisé par 3, pour arriver à 1046.
        Le niveau d'inquiétude actuel n'est pas divisible par 17.
        L'objet, avec un niveau d'inquiétude de 1046, est envoyé au singe 1.
```

Après la première manche, les singes tiennent des objets avec ces niveaux d'inquiétude :

```monkeysAfterRound
Monkey 0: 20, 23, 27, 26
Monkey 1: 2080, 25, 167, 207, 401, 1046
Monkey 2: 
Monkey 3:
```

Les singes 2 et 3 ne tiennent pas d'objets à la fin de la manche, ils ont tous les deux inspecté tous leur objet durant la manche et les ont lancés avant que la manche ne se termine.

Le processus continue pendant plusieurs manches :

```monkeysAfterRound
Après la manche 2, les singes tiennent des objets avec ces niveaux d'inquiétude:
Singe 0: 695, 10, 71, 135, 350
Singe 1: 43, 49, 58, 55, 362
Singe 2: 
Singe 3: 

Après la manche 3, les singes tiennent des objets avec ces niveaux d'inquiétude:
Singe 0: 16, 18, 21, 20, 122
Singe 1: 1468, 22, 150, 286, 739
Singe 2: 
Singe 3: 

Après la manche 4, les singes tiennent des objets avec ces niveaux d'inquiétude:
Singe 0: 491, 9, 52, 97, 248, 34
Singe 1: 39, 45, 43, 258
Singe 2: 
Singe 3: 

Après la manche 5, les singes tiennent des objets avec ces niveaux d'inquiétude:
Singe 0: 15, 17, 16, 88, 1037
Singe 1: 20, 110, 205, 524, 72
Singe 2: 
Singe 3: 

Après la manche 6, les singes tiennent des objets avec ces niveaux d'inquiétude:
Singe 0: 8, 70, 176, 26, 34
Singe 1: 481, 32, 36, 186, 2190
Singe 2: 
Singe 3: 

Après la manche 7, les singes tiennent des objets avec ces niveaux d'inquiétude:
Singe 0: 162, 12, 14, 64, 732, 17
Singe 1: 148, 372, 55, 72
Singe 2: 
Singe 3: 

Après la manche 8, les singes tiennent des objets avec ces niveaux d'inquiétude:
Singe 0: 51, 126, 20, 26, 136
Singe 1: 343, 26, 30, 1546, 36
Singe 2: 
Singe 3: 

Après la manche 9, les singes tiennent des objets avec ces niveaux d'inquiétude:
Singe 0: 116, 10, 12, 517, 14
Singe 1: 108, 267, 43, 55, 288
Singe 2: 
Singe 3: 

Après la manche 10, les singes tiennent des objets avec ces niveaux d'inquiétude:
Singe 0: 91, 16, 20, 98
Singe 1: 481, 245, 22, 26, 1092, 30
Singe 2: 
Singe 3: 

...

Après la manche 15, les singes tiennent des objets avec ces niveaux d'inquiétude:
Singe 0: 83, 44, 8, 184, 9, 20, 26, 102
Singe 1: 110, 36
Singe 2: 
Singe 3: 

...

Après la manche 20, les singes tiennent des objets avec ces niveaux d'inquiétude:
Singe 0: 10, 12, 14, 26, 34
Singe 1: 245, 93, 53, 199, 115
Singe 2: 
Singe 3: 
```

Courir après tous les singes en même temps s'avère impossible. Vous devrez donc vous concentrer sur *les deux singes les plus actifs* si vous voulez récupérer vos affaires. Comptez *le nombre total de fois que chaque singe inspecte un objet* sur 20 manches :

<code><pre><em>Le singe 0 a inspecté des objets 101 fois.</em>
Le singe 1 a inspecté des objets 65 fois.
Le singe 2 a inspecté des objets 7 fois.
<em>Le singe 3 a inspecté des objets 105 fois.</em></pre></code>

Dans cet exemple, les deux singes les plus actifs ont inspecté 101 et 105 objets. Le niveau *d'affaires de singes* dans cette situation peut être trouvé en en faisant le produit : *`10605`*.

Trouvez après quels singes courir  en comptant combien d'objets chacun d'eux inspecte pendant 20 manches. *Quel est le niveau d'affaires de singes après 20 manches de bêtises simiesque de lançage d'affaires ?*
