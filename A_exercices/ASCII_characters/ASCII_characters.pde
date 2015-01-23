// le code ASCII permet d'associer un nombre à chaque caractère
// Processing permet de récupérer un caractère à partir de son code ASCII à l'aide de la fonction  char( int number )

// on affiche les 256 premiers caractères ASCII à l'aide d'une boucle while
int compteur = 0;
while( compteur < 260 )
{
    println( nf(compteur, 3) + ": " + char( compteur ) );
    compteur ++;    
}

exit();
