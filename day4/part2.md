# --- Partie Deux ---

Il semblerait qu'il y ait toujours pas mal de travail dupliqué de planifié. À la place, les elfes voudraient donc connaître le nombre de paires qui *se superposent, tout court*.

Dans l'exemple ci-dessus, les deux premières paires (`2-4,6-8` et `2-3,4-5`) ne se superposent pas, alors que les quatre paires restantes (`5-7,7-9`, `2-8,3-7`, `6-6,4-6` et `2-6,4-8`) se superposent bel et bien :

- `5-7,7-9` se superposent une seule section, `7`.
- `2-8,3-7` se superposent sur toutes les sections de `3-7`.
- `6-6,4-6` se superposent sur une seule section, `6`.
- `2-6,4-8` se superposent sur les sections `4`, `5` et `6`.

Ainsi, dans cet exemple, le nombre de paires d'assignations se superposant est de *`4`*.

*Dans combien de paires d'assignations les intervalles se superposent-ils au moins en partie ?*
