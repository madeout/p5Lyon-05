//On peut créer d'autres onglets dans Processing pour séparer les différents éléments du code, pour les retrouver plus facilement
//Pour cela il suffit de cliquer sur la flèche tout à droite de la fenêtre et ensuite sur New Tab  ------------------------------------------------------>

void mode1() {//visualisation des données les unes par rapport aux autres
  for (int i=0; i<26; i++) {//pour chaque lettre
    //rectangles
    if (nbLettre[i]==max(nbLettre)) {//SI le compteur de la lettre 'i' est égal à la valeur max
      fill(255, 0, 0);
    }
    else if (nbLettre[i]==min(nbLettre)) {//OU SI le compteur de la lettre 'i' est égal à la valeur min
      fill(150, 150, 255);
    }
    else {//SINON
      fill(0);
    }

    rect(40, 25+i*25, map(nbLettre[i], min(nbLettre), max(nbLettre), 5, width-40-60), 20);
    //la fonction map(variable, val1, val2, val3, val4) permet de faire des rapports de valeurs simplifiés:
    //pour une variable qui va dans une fourchette de valeurs entre val1 et val2, on va la situer dans une nouvelle fourchette entre val3 et val4
    //donc si notre variable=val1(min de la 1ère fourchette), on obtiendra val3(min de la 2nde fourchette)
    //si notre variable=val2(max de la 1ère fourchette), on obtiendra val4(max de la 2nde fourchette)
    //si c'est la moitié de la première, on aura la moitié de la seconde, et si c'est 64.75% de la première, on laisse l'ordinateur faire les calculs...
    
    //textes
    fill(0);
    textAlign(LEFT);
    text(char(65+i), 20, 39+i*25);//utilisation du code ASCII pour afficher le caractère
    textAlign(RIGHT);
    text(nbLettre[i], width-20, 39+i*25);
  }
}


//ici 2 autres modes Bonus: je vous laisse regarder les références sur processing.org pour les "arc" et la trigo sur http://processing.org/learning/trig/
//petit rappel de trigo pour le mode2 (Processing vous réconciliera avec certaines notions mathématiques qui paraîssent totalement abstraites, je parle de vécu)
//float x = cos(radians(angle)) * radius; radians(pour_un_angle_en_degrés) sinon pas radians() si on parle d'un angle entre 0 et TWO_PI
//float y = sin(radians(angle)) * radius;

void mode2() {//visualisation des données par rapport à l'ensemble du texte, on se rend compte de la place occupée par une lettre dans l'ensemble du texte
  int nb=0;
  for (int i=0; i<26; i++) {//pour chaque lettre
    colorMode(HSB);//au lieu du mode RVB utilisé par défaut dans Processing, on utilise ici le mode HSB: Hue, Saturation, Brightness (ou TSL en Français: Teinte, Saturation, Luminosité)
    fill(map(nbLettre[i], min(nbLettre), max(nbLettre), 130, 255), 220, 255);
    arc(width/2, height/2, width-40, width-40, radians(map(nb, 0, nbTotal, 0, 360)-1), radians(map(nb+nbLettre[i], 0, nbTotal, 0, 360)));
    
    fill(map(nbLettre[i], min(nbLettre), max(nbLettre), 130, 255), 220, 255);
    textAlign(CENTER);
    text(char(65+i), width/2+ (width/2-10) * cos(radians(map(nb+nbLettre[i]/2, 0, nbTotal, 0, 360)-1)), height/2+6+ (width/2-10) * sin(radians(map(nb+nbLettre[i]/2, 0, nbTotal, 0, 360)-1)));
    nb+=nbLettre[i];
  }
  
  fill(255);
  ellipse(width/2, height/2, width-200, width-200);//rond blanc au centre 

  fill(0);
  textAlign(LEFT);
  text("Nombre total de lettres: "+nbTotal, 200, height/2-20);
  text("Minimum: "+ min(nbLettre), 200, height/2);
  text("Maximum: "+ max(nbLettre), 200, height/2+20);
}

void mode3() {//représentation plus imagée des données
  fill(0);
  for (int i=0; i<26; i++) {
    String[] fontList = PFont.list();
    fill(0, map(nbLettre[i], min(nbLettre), max(nbLettre), 255, 150));
    textFont(createFont(fontList[i], map(nbLettre[i], min(nbLettre), max(nbLettre), 20, 220)));
    textAlign(CENTER);
    text(char(65+i), 
    random(map(nbLettre[i], min(nbLettre), max(nbLettre), 20, 150), width-map(nbLettre[i], min(nbLettre), max(nbLettre), 20, 150)), 
    random(map(nbLettre[i], min(nbLettre), max(nbLettre), 20, 150), height-map(nbLettre[i], min(nbLettre), max(nbLettre), 20, 150)));
  }
}
