/*
Comme la boucle while, 
 la boucle for permet de répéter une action plusieurs fois dans la même frame 
 tant qu'une condition est vraie.
 
 Par contre, elle prend directement en paramètres:
 - la création de son compteur
 - la condition à vérifier pour répéter les instructions
 - l'incrémentation de son compteur, la mise à jour du compteur 
 
 malgré sa syntaxe plus "abstraite", elle est souvent préférée à la boucle while 
 car permet d'éviter plus facilement les boucles infinies
 l'initialisation du compteur, la condition et l'incrémentation se trouvant sur la même ligne,
 il est plus facile de repérer une erreur
 */

size(600, 200);
background(255);


//création d'une variable pour compter les répétitions
//tant que compteur est inférieur à 10, on répète les instructions
// mise à jour du compteur
for ( int compteur = 0; compteur < 10; compteur = compteur + 1) 
{
    //on dessine un rond positionné aléatoirement dans la première moitié du programme
    noStroke();
    fill(0);
    ellipse( random( width/2 ), random(height), 10, 10);


    // on peut aussi utiliser le compteur pour dessiner
    stroke(compteur * 25, 0, 0);
    line( width/2 + (compteur * 30), 0, width/2 + (compteur * 30), height);
}

