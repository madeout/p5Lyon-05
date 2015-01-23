// Déclaration d'une variable contenant une typographie
PFont font;

void setup()
{
    size(400, 300);

    // Affichage du tableau contenant toutes les typographies installées
    printArray( PFont.list() );

    // création de la fonte pour la typo choisie avec une taille de 60px de haut
    font = createFont( "Comic Sans MS", 60 );

    // on dit à Processing d'utiliser la fonte précédemment créée
    textFont( font );

    // on définit les modes d'alignement horizontal (LEFT, CENTER ou RIGHT)
    // et vertical (UP, CENTER ou BOTTOM) du texte  
    textAlign( CENTER, CENTER );
    //textAlign( LEFT, BOTTOM );
    //textAlign( RIGHT, UP );
}

void draw() {
    background( 0 );
    
    // on affiche notre texte
    text( "HAHA! :)", width/2, height/2 );
}

