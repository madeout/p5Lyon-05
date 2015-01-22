int a=50;//création d'une variable du type Integer: nombre entier
float b=10.5;//création d'une variable du type Float: nombre à virgule


//initialisation du sketch
//le setup s'execute une seule fois au lancement du sketch
//on met donc les éléments comme la taille de la fenêtre, la vitesse de lecture, le background...
void setup() {
  size(400, 400, P2D);//P2D est un moteur de rendu, si on ne l'indique pas on est en JAVA2D mode de rendu par défaut

  smooth();//fonction de lissage de l'affichage

  frameRate(30);//vitesse de lecture en frame par secondes

  background(#67D895);//on peut mettre la couleur en hexadecimal cf: Tools->ColorSelector

  noStroke();//on peut mettre noStroke(); dans le setup si l'on ne veut aucun trait sur tous les éléments que l'on dessinera ensuite
}
//fin de l'initialisation


//boucle de dessin qui s'execute à la vitesse indiquée dans le frameRate
void draw() {
  background(#67D895);//enlever le background pour garder le dessin de la frame précédente

  fill(0, 200);
  rect(10, a, 30, 30);//utilisation de la variable a

  b=b+0.05;//'b' augmente de 0.05 à chaque frame
  fill(random(255));//random(Valeur) donne un nombre à virgule (float) aléatoire entre 0 et Valeur 
  rect(50, b, width-70, height/10);//utilisation de la variable b        //width: largeur de la fenêtre, height: hauteur de la fenêtre indiquées dans size(width,height);

  fill(random(255), random(50), random(50));//un random pour le rouge, un pour le vert, un pour le bleu
  ellipse(mouseX, mouseY, random(20, 40), random(20, 40));//random(valeurMin, valeurMax) permet d'avoir un nombre aléatoire entre valeurMin et valeurMax
}


//s'exécute si l'on clique avec la souris
void mousePressed() {
  a=a+10;//'a' augmente de 10 lorsque l'on clique
}

//s'exécute si l'on appuie sur une touche du clavier
void keyPressed() {
  saveFrame("output.png");//enregistre une image de la frame("nomdenotreimage.jpg ou tif ou png ou tga"); si déjà enregistré, ré-enregistre par dessus
  //saveFrame(frameCount+".png");//pour enregistrer des images avec un nom différent à chaque fois: saveFrame(uneVariable+".extension")
  //frameCount est le numéro de la frame = le numéro de la lecture de la boucle draw
}

