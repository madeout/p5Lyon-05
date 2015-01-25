/*
les tableaux sont des structures permettant de stocker plusieurs valeurs de même type:
 on peut stocker plusieurs int, float, color, PImage, PFont...
 
 on peut les imaginer comme une colonne d'un fichier Excel
 */


//première étape, on déclare nos tableau avec le type des éléments qu'ils contiendront
// le symbole [] après le type permet au programme de savoir que ce sont des tableaux

int[] mesEntiers; // mesEntiers ne contiendra donc que des nombre entiers "int"
int[] mesAutresEntiers; // mesAutesEntiers ne contiendra donc que des nombre entiers "int"

float[] mesFloats; // mesFloats ne contiendra donc que des nombre à virgule "float"

void setup()
{
    size(500, 500);

    //deuxième étape, on initialise le nombre de valeurs que doivent contenir nos tableaux
    //mesEntiers = new int[10]; // mesEntiers est un nouveau tableau qui contiendra 20 nombres entiers

    mesFloats = new float[10]; // mesFloats est un nouveau tableau qui contiendra 20 nombres à virgule

    //troisième étape, on remplie les "cases" de nos tableaux; on lui attribue des valeurs


    
    // on peut utiliser un boucle de répétition:
}

void draw() {
}

