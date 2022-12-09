# --- Partie Deux ---

Désormais, vous êtes prêt à choisir un dossier à supprimer.

L'espace disque disponible total du système de fichier est de *`70000000`*. Pour installer la mise-à-jour, vous avez besoin d'un espace libre d'au moins *`30000000`*. Vous devez donc trouver un dossier à supprimer qui *libérera assez d'espace* pour installer la mise-à-jour.

Dans l'exemple ci-dessus, la taille totale du dossier-racine (et donc l'espace utilisé) est de `48381165`. Ceci signifie que la taille de l'espace *libre* est actuellement de `21618835`, assez loin donc des `30000000` requis pour la mise-à-jour. Ainsi, la mise-à-jour a besoin qu'un dossier d'une taille d'au moins `8381165` soit supprimé pour se faire.

Afin d'y arriver, vous avez les options suivantes :

- Supprimer le dossier `e`, ce qui devrait augmenter l'espace libre de `584`.
- Supprimer le dossier `a`, ce qui devrait augmenter l'espace libre de `94853`.
- Supprimer le dossier `d`, ce qui devrait augmenter l'espace libre de `24933642`.
- Supprimer le dossier `/`, ce qui devrait augmenter l'espace libre de `48381165`.

Les dossiers `e` et `a` sont tous les deux trop petit : les supprimer ne libérerais pas assez d'espace. Cependant, les dossiers `d` et `/` sont tous les deux assez grands ! Entre ceux-ci, choisissez le *plus petit* dossier : `d`, ce qui augmentera l'espace libre de *`24933642`*.

Trouvez le plus petit dossier qui, s'il était supprimé, libérerait assez d'espace disque pour faire la mise-à-jour. *Quelle est la taille totale de ce dossier ?*
