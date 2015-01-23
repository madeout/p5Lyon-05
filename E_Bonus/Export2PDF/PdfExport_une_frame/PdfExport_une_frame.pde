/*
 Enregistrer une seule frame en pdf:
 le début de l'enregistrement du PDF commence lorsque l'on clique
 une boucle draw() est enregistré sur le PDF
 à la fin du draw() le PDF termine l'enregistrement:
 On enregistre toutes les instructions que l'on donne à processing pendant un seul draw()
 */

import processing.pdf.*;//importation de la bilbiothèque processing pour générer du pdf vectoriel

//création d'un booléen
boolean saveOneFrame = false;
/*
un booléen "boolean" est une variable qui a pour valeur true(vrai) ou false(faux)
 */

void setup() {
  size(600, 600);
  frameRate(24);
}

void draw() {
  if (saveOneFrame == true) {//si saveOneFrame est vrai (true), on démarre l'enregistrement du pdf
    beginRecord(PDF, "Line.pdf");
  }

  background(255);
  stroke(0, 20);
  strokeWeight(20.0);
  line(mouseX, 0, width-mouseY, height);

  if (saveOneFrame == true) {//si saveOneFrame est vrai (true), on arrête l'enregistrement du pdf
    endRecord();
    saveOneFrame = false; // et on met saveOneFrame faux (false) pour ne pas qu'il réenregistre au draw() suivant
  }
}

void mousePressed() {
  saveOneFrame = true; //en cliquant on met saveOneFrame vrai
}

