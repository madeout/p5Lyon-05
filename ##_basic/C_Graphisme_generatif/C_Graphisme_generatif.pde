/*
En plus des méthodes void setup(){}, void draw(){}, void mousePressed(){}, void keyPressed(){},... 
on peut dans processing créer ses propres méthodes, ce qui nous permet d'organiser noter code ou d'éviter de le retaper plusieurs fois:
pour cela il suffit de la créer en dehors de ces autres méthodes:

void maMéthodePourToutRemettreEnBlanc(){
  //le code que je veux faire éxécuter à chaque fois que j'appelle cette méthode
  background(255);
}

et ensuite il suffit d'appeler cette méthode dans le setup() ou dans le draw() (ou dans une autre méthode):
void draw(){
  //du code
  //du code
  maMéthodePourToutRemettreEnBlanc();//cela ira directement éxécuter tout le code dans notre void maMéthodePourToutRemettreEnBlanc(){}
  //du code
  //du code
}

ou:
void mousePressed(){
  maMéthodePourToutRemettreEnBlanc();//cela ira directement éxécuter tout le code dans notre void maMéthodePourToutRemettreEnBlanc(){}
}
*/

float x, y, vitX, vitY, taille;// création de toutes les variables du type Float d'un seul coup
int timer=0;//variable "timer" est un Integer (entier) car augmente de 1 à chaque frame

void setup() {
  size(600, 800, P2D);
  smooth();//lissage du rendu

  frameRate(100);//vitesse de lecture

  //initialisation des variables
  x=random(width);
  y=random(height);

  vit();//la méthode "vit()" est créée plus bas avec void vit(){}, on demande une première fois l'éxécution de la méthode "vit()"
  
  background(255);
  
  //rectMode(CENTER); //permet de placer les rectangles par leur milieu au lieu du coin en haut à gauche
}


void draw() {
  //timer
  timer++;//équivaut  timer=timer+1;
  if (timer>50) {// avec if on vérifie une condition (inférieur < , supérieur > , inférieur ou égal <= , supérieur ou égal >= , égal == )
    vit();//on appelle la méthode "vit()" créée plus bas avec void vit(){} 
    timer=0;//on remet le timer à 0 pour grader nos vitesses et notre taille constante pendant 50 frames à nouveau
  }

  //détection des collisions sur les côtés
  //pour le côté gauche: si notre position + vitesse >0 alors on ajoute la vitesse pour être sûr que l'on reste toujours en dessus de 0
  //pour le côté droit: si notre position + vitesse + largeur du rectangle <width alors on ajoute la vitesse pour être sûr que l'on reste toujours en dessous de width
  if (x+vitX>0 && x+vitX+taille<width) {// avec && on vérifie que plusieurs conditions sont toutes justes en même temps
    x=x+vitX;
  }
  else {//sinon
    vit();//
    timer=0;
  }

  //détection des collisions sur le haut et le bas
  if (y+vitY>0 && y+vitY+taille<height) {
    y=y+vitY;
  }
  else {
    vit();//on appelle la méthode "vit()" créée plus bas avec void vit(){} 
    timer=0;//on remet le timer à 0
  }

  rect(x, y, taille, taille);
  rect(width-x, y, taille, taille);//symétrie verticale
  rect(x, height-y, taille, taille);//symétrie horizontale
  rect(width-x, height-y, taille, taille);//symétrie verticale et horizontale
}


void vit() {//création de la méthode "vit()" pour les changement des vitesses en x et y, et de la taille
  //à chaque fois que Processing lira l'instruction "vit();", tout ce qui est entre les {} de notre méthode sera éxécuté
  vitX=floor(random(-6, 7));//floor arrondit à la valeur inférieure: 12.5 est arrondis à 12.0 (pour avoir des déplacements lissés)
  vitY=floor(random(-6, 7));
  taille=random(5, 30);
}


void keyPressed() {
  if (key==' ') {// si la touche appuyée est ' '(ESPACE), on peut mettre n'importe quel caractère, Processing distingue la casse: 'r' est différent de 'R'
    //export de l'image
    saveFrame("#####.jpg");//Processing remplacera directement ##### par le numéro de la frame
  }
  
  if (keyCode==ENTER) {// on utilise keyCode pour les touches comme BACKSPACE, ENTER, UP, DOWN, etc...
    //ré-initialisation
    background(255);
    x=random(width);
    y=random(height);
    vit();//on appelle la méthode "vit()"
  }
}

