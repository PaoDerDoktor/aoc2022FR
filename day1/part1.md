# --- Jour 1 : Comptage de calories

Les reines du Père Noël sont d'habitude nourris avec de la nourriture pour rennes normale, mais ils ont besoin de beaucoup [d'énergie magique](https://adventofcode.com/2018/day/25) pour livrer les cadeaux le soir de Noël. Pour cela, leur casse-croûte préféré est une espèce spéciale de fruit-**étoile** qui ne grandit que dans la jungle profonde. Les elfes vous ont embarqué dans leur expédition annuelle vers le bosquet où poussent ces fruits.

Pour leur fournir assez d'énergie magique, l'expédition doit récupérer un minimum de **cinquante étoiles** avant le 25 décembre. Même si les elfes vous assurent que le bosquet contiendra assez de ces fruits, vous décidez tout de même de récupérer chaque fruit que vous pourriez trouver sur la route, au cas où.

récupérez des étoiles en résolvant des puzzles. Deux puzzles seront disponibles chaque jour du calendrier de l'Avent ; le deuxième puzzle étant débloqué après avoir réussi le premier. Chaque puzzle vous récompensera d'**une étoile**. Bonne chance !

La jungle doit être dotée d'une végétation tellement envahissante et développée que les elfes décident traditionnellement de ne pas voyager dans la jungle par les airs ou en véhicule terrestre, mais à pieds. Alors que votre bateau approche des côtes, les elfes commencent à faire l'inventaire de leurs ressources. L'une des plus importantes de celles-ci étant la nourriture - et en particulier, le nombre de *Calories* que chaque elfe porte (l'entrée de votre puzzle).

Les elfes notent tour-à-tour le nombre de Calories contenues par leurs différents repas, casse-croûtes, rations, etc. qu'ils ont emporté avec eux, une entrée par ligne. Chaque elfe sépare son inventaire de celui de l'elfe précédent (s'il y en a un) par une ligne vide.

Par exemple, admettons que les elfes finissent d'écrire leur inventaire de Calories et obtiennent la liste suivante :

```int
1000
2000
3000

4000

5000
6000

7000
8000
9000

10000
```

La liste représente le nombre de Calories portées par cinq elfes :

- Le premier elfe porte des objets avec `1000`, `2000` et `3000` Calories, pour un total de *`6000`* Calories.
- Le deuxième elfe porte un seul objet avec *`4000`* Calories.
- Le troisième elfe porte des objets avec `5000` et `6000` Calories, pour un total de *`11000`* Calories.
- Le quatrième elfe porte des objets avec `7000`, `8000`, `9000` Calories, pour un total de *`24000`* Calories.
- Le cinquième elfe porte un seul objet avec *`10000`* Calories.

Dans le cas où les elfes se mettraient à avoir faim et auraient besoin de casse-croûtes supplémentaires, ils ont besoin de savoir à quel elfe demander : ils aimeraient donc savoir combien de Calories sont portées par l'elfe portant *le plus* de Calories. Dans l'exemple ci-dessus, il s'agit de *`24000`* (portées par le quatrième elfe).

Trouvez l'elfe portant le plus de Calories. *Combien de Calories l'elfe porte-t-il au total ?*
