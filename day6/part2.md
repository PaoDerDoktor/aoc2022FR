# --- Partie Deux ---

Le système de communication de votre appareil détecte correctement les paquets, mais il ne fonctionne toujours pas. Il semblerait qu'il doive aussi détecter les *messages*.

Un *marqueur de début de message* est semblable à un marqueur de début de paquet, sauf qu'il possède *14 caractères distincts* plutôt que 4.

Voici quelques positions des premiers marqueurs de début de message pour tous les exemples ci-dessus :

- `mjqjpqmgbljsphdztnvjfqwrcgsmlb` : premier marqueur après *`19`* caractères
- `bvwbjplbgvbhsrlpgdmjqwftvncz` : premier marqueur après *`23`* caractères
- `nppdvjthqldpwncqszvftbrmjlhg` : premier marqueur après *`23`* caractères
- `nznrnfrfntjfmvfwmzdfjlvtqnbhcprsg` : premier marqueur après *`29`* caractères
- `zcfzfwzzqfrljwzlrfnpqdbhtmscgvjw` : premier marqueur après *`26`* caractères

*Combien de caractères doivent être traités avant que le premier marqueur de début de message ne soit détecté ?*
