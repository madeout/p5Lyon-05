/** 
 Enregistrer plusieurs frames:
 le début de l'enregistrement du PDF commence avec le démarrage du sketch
 la fin de l'enregistrement se fait en cliquant sur le sketch
 */


import processing.pdf.*;//importation de la bibliothèque permettant d'enregistrer des pdf dans processing

void setup() {
  size(600, 600);
  frameRate(24);
  background(255);
  beginRecord(PDF, "Lines.pdf");// début de l'enregistrement du PDF et nom du fichier exporté
}

void draw() {
  stroke(0, 20);
  strokeWeight(20.0);
  line(mouseX, 0, width-mouseY, height);
}

void mousePressed() {
  endRecord();//fin de l'enregistrement
}

