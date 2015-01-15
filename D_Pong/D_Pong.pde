float playerA, playerB;//on crée d'un coup toutes les variables pour les 2 joueurs
float taille, ballX, ballY, vitX, vitY;//on crée d'un coup toutes les variables relatives à la balle
int scoreA, scoreB;

void setup() {
  size(800, 600);
  smooth();

  taille=20;
  ballX=width/2;
  ballY= height/2;
  vitX=2;
  vitY=random(-1.5, 1.5);

  noStroke();
  rectMode(CENTER);
  //par défaut Processing est en rectMode(CORNER); x,y correspond au coin en haut à gauche
  //rectMode(CENTER); permet de placer les rectangles par rapport à leur centre: 
  //rect(x,y,w,h); le centre du rectangle sera en x,y.
}

void draw() {
  background(0);

  fill(255);
  //affichage du playerA
  if (mouseY>40 && mouseY<height-40) {//40: moitié de la hauteur de notre joueur
    playerA=mouseY;
  }
  rect(20, playerA, 20, 80);

  //affichage du playerB
  if (mouseY>40 && mouseY<height-40) {
    playerB=mouseY;
  }
  rect(width-20, playerB, 20, 80);


  //affichage de la balle
  rect(ballX, ballY, taille, taille);

  //vérification des collisions haut et bas
  if (ballY-taille/2<=0 || ballY+taille/2>=height) {
    vitY=-vitY;
    ballY=ballY+vitY;
  }
  
//on vérifie les collisions de la balle avec les joueurs, il y a superposition si:
//le côté gauche de la balle est inférieur au côté droit du joueur et
//le côté droit de la balle est supérieur au côté gauche du joueur et
//le côté haut de la balle est supérieur au côté bas du joueur et
//le côté bas de la balle est inférieur au côté haut du joueur
  if (ballX-taille/2+vitX<=30 && ballX+taille/2+vitX>=10 && ballY+taille/2+vitY>=playerA-40 && ballY-taille/2+vitY<=playerA+40) {  //vérification des collisions avec playerA
    vitX=-vitX*1.2;
    ballX = 31+vitX;
    vitY=random(-3, 3);
  }
  else if (ballX-taille/2+vitX<=width-10 && ballX+taille/2+vitX>=width-30 && ballY+taille/2+vitY>=playerB-40 && ballY-taille/2+vitY<=playerB+40) {  //vérification des collisions avec playerB
    vitX=-vitX*1.2;
    ballX = width-31+vitX;
    vitY=random(-3, 3);
  }
  else {    //déplacement normal de la balle
    ballX= ballX+vitX;
    ballY= ballY+vitY;
  }

  //affichage des scores
  textSize(80);
  textAlign(CENTER);//pareil que rectMode mais pour le texte
  fill(255, 150);
  text(scoreA, width/2-70, 70);
  text(" - ", width/2, 70);
  text(scoreB, width/2+70, 70);

  //comptage des points
  if (ballX<0) {
    scoreB=scoreB+1;
    ballX=width/2;
    ballY=height/2;
    vitX=-2;
    vitY=random(-3, 3);
  }

  if (ballX>width) {
    scoreA=scoreA+1;
    ballX=width/2;
    ballY=height/2;
    vitX=2;
    vitY=random(-3, 3);
  }
}

