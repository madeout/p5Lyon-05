import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class viz101 extends PApplet {


// d\u00e9clarer des tableaux 


String [] sentiments;
int [] valeurs;
int [] couleurs;

int valeurMax;
int valeurMin;

int count;
int [] fixX;
int [] fixY;

public void setup() {
    size(600,500);
    background(255);

    // charger le fichier
    String[] data=loadStrings("feelings.csv");

    // donner la taille des tableaux
    sentiments = new String[data.length];
    valeurs = new int[data.length];
    couleurs = new int[data.length];

    // parser les donn\u00e9es
    for (int i = 0; i <  data.length; ++i) {

        // s\u00e9parer les valeurs contenues entre les virgules
        String[] tmp = split(data[i], ",");

        sentiments[i] = tmp[0];
        valeurs[i] = PApplet.parseInt(tmp[1]); // convertir en entier 
        couleurs[i] = unhex(tmp[2]); // convertir en couleur
    }
    
    // v\u00e9rifier les r\u00e9sultats
    // printArray(sentiments);
    // printArray(valeurs);
    // printArray(couleurs);

    // trouver la valeur minimum et maximum
    valeurMax = max(valeurs);
    valeurMin = min(valeurs);

    // println(valeurMax, valeurMin);

    count = 0;
    fixX = new int[data.length];
    fixY = new int[data.length];
}

public void draw() {
    background(0);
    // basicViz();
    circleEpileptic();
    // pixelViz();
    // clickFeeling();
}

public void clickFeeling() {
    noStroke();
    int radius = 50;
    for (int i = 0; i < count; ++i) {
        fill(couleurs[i]);
        int r = round(map(valeurs[i], valeurMin, valeurMax, 0, radius));
        textSize(r);
        text(sentiments[i], fixX[i], fixY[i]);
    }
}

public void mouseClicked() {
    fixX[count] = round(random(width));
    fixY[count] = round(random(height));
    count++;
}

public void circleEpileptic() {
    int radius = 50;
    noStroke();
    for (int i = 0; i < valeurs.length; ++i) {
        int r = round(map(valeurs[i], valeurMin, valeurMax, 0, radius));
        int x = round(random(width));
        int y = round(random(height));
        fill(couleurs[i]);
        ellipse(x, y, r, r);
    }
}

public void basicViz() {

    // prendre les 50 premi\u00e8res valeurs et les afficher en couleur !
    for (int i = 0; i < 50; ++i) {
        int x = round(map(valeurs[i], valeurMin, valeurMax, 0, width));
        // int y = map(valeurs[i], valeurMin, valeurMax, 0, height) ; 
        int y = i*height/50;
        fill(couleurs[i]);
        text(sentiments[i], x, y);
    }
}

public void pixelViz(){
    int w = 20;
    noStroke();
    for (int i = 0; i < valeurs[i]; ++i) {
        int x = i % (width/w); 
        int y = i / (width/w);
        fill(couleurs[i]);
        rect(x*w,y*w,w,w);
    }

    // retrouver i depuis les coordonn\u00e9es de la souris
    fill(0);
    int j =(mouseX/w) + (mouseY/w)*(width/w);
    text(sentiments[j], 5, 10);
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "viz101" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
