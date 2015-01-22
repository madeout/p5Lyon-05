# Visualization 101

Cet exercice montre différents moyens de visualiser un jeu de données existant.

## Données

Les données sont issues du projet *[We Feel Fine](http://wefeelfine.org/)*. Pionnier de la dataviz utilisant Twitter, ce projet était une tentative de visualiser les différentes émotions humaines en extrayant depuis Twitter tout les tweets mentionnant "I feel". 

Le jeu de données contient une liste de 2178 sentiments, ainsi que le nombre de fois qu'il a été utilisé et également une couleur qui lui a été attribué. Chaque couleur est exprimée selon une notation [hexadécimale](https://processing.org/reference/hex_.html). 

Le format est le suivant : 

    FEELING, COUNT, COLOR 
    better,872884,FFFFA401
    good,648881,FFFFF700
    ...
    painless,133,FF00696F

## Parsing des données

Pour pouvoir utiliser les données, il nous faut d'abord les parser au bon format.  Nous allons créer un tableau pour contenir chacune des colonnes : ```sentiments```, ```valeurs```, ```couleurs``` afin de pouvoir ensuite les croiser librement.

Pour remplir ces tableaux, nous allons utiliser la commande   ```for ``` qui permet de réaliser des boucles.

### Les boucles "for"

Pour parcourir facilement les tableaux, on utilise des boucles qui passent en revue chaque élément un à un. La plus commune est la boucle for.

    mon_tableau= [ truc, machin, chose, bidule ]
    pour chaque élément dans mon tableau : 
        fais çi
        fais ça

Chaque élément (item) du tableau possède une position précise appelée index.

    mon_tableau  = [ truc, machin, chose, bidule, ... ]
                       0       1       2     3    ...

On utilise cet index pour se déplacer dans le tableau.

    pour chaque index compris entre 0 et la fin du tableau :
        trouve l'élément qui correspond à l'index

Traduit en Processing, voilà ce que ça donne :

    String[] mon_tableau  = [ "truc", "machin", "chose", "bidule" ];
    for (int i = 0; i < mon_tableau.length; ++i) {
        String element=mon_tableau[i];
    }

Par convention, les index sont nommés par une seule lettre : i, j, k...


## Visualisations

Ici, nous proposons un ensemble de visualisation sous forme d'exercices. Chacune est contenue dans une fonction spécifique.

* ```basicViz``` affiche les 50 premières valeurs sur un axe des valeurs
* ```clickFeeling``` ajoute une nouvelle valeur à chaque clic
*  ```circleEpileptic``` fait scintiller l'écran en affichant toutes les valeurs - et fatigue vos yeux
* ```pixelViz``` dessine un carré pour chaque sentiment et le colorie dans la couleur associé de façon à occuper tout l'écran
