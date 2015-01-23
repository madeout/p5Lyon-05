void setup() {
  size(600, 200);
  smooth();
  strokeWeight(3);
  frameRate(1);
}

void draw() {
  background(255);

//boucle for pour dessiner plusieurs lignes d'un coup
  for (int i=10; i<width; i=i+10) {
    //la boucle "for" permet de répeter plusieurs fois, pendant un seul draw(), des instructions tant qu'une condition est vérifiée
    //elle se décompose comme suit:
    //for(création variable; condition; valeur suivante pour la variable){}= tant que
    // int i=10 :on crée une variable avec une valeur de départ
    // i<width : la condition à vérifier pour éxécuter les instructions
    // i=i+10 : la valeur de notre variable pour la prochaine vérification de notre condition

    //dans notre boucle for on peut vérifier des conditions:
    if ( i<=200 || i>=400) {// '||' = OU : la condition est 'juste' si une des 2 conditions est vérifiée; on est ici sur des conditions "inférieur ou égal" et "supérieur ou égal" 
      //if(condition): SI une condition est vérifiée 
      stroke(255, 0, 0);
    }
    else if (i>250 && i<350) {// '&&' = ET : la condition est 'juste' si une les 2 conditions sont vérifiées en même temps; on est ici sur des conditions "strictement inférieur" et "strictement supérieur"
      //else if(autre_condition): OU SI une autre condition est vérifiée 
      stroke(0, 255, 0);
    }
    else {
      //else: SINON
      stroke(0);
    }

    line(i, 10, i, 50);//on crée une ligne en utilisant la variable i de notre boucle for
  }
  //on obtient des lignes décalées régulièrement de 10 pixels avec un stroke différent selon leur position
  //ce qui évite de taper toutes les lignes à la main, plutôt pratique


  stroke(0);
  line(0, 60, width, 60);//séparation de notre sketch


  //on peut ausi imbriquer les boucles for:
  //double boucle for pour dessiner une grille de points d'un coup
  for (float x=10; x<width-10; x=x+random(10)) {//première boucle pour l'axe X (on met "float x" car on lui ajoute un valeur aléatoire, or "random" donne un nombre aléatoire à virgule
    for (int y=70; y<height-10; y=y+5) {//2ème boucle pour l'axe Y
      stroke(x, 0, y);
      point(x, y);
    }
  }
}

