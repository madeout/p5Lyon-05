Processing Lyon # 05
////////////////////////////////////////////////////////
GÉOMÉTRIES DE BASE
point(x, y);
line(x1, y1, x2, y2);

size(width, height);
//size de base 100px
->CTRL+R
Référence / CTRL+MAJ+F

triangle(x1, y1, x2, y2, x3, y3);
quad(x1, y1, x2, y2, x3, y3, x4, y4);
->Référence CTRL+MAJ+F
rect(x, y, width, height);
ellipse(x, y, width, height);

//rectMode(CENTER);
//ellipseMode(CORNER);
smooth();
////////////////////////////////////////////////////////
COULEUR RGB
background();
stroke();
strokeWeight();
fill();
-> ColorSelector
noStroke();
noFill();
////////////////////////////////////////////////////////
VARIABLES
width, height

int
float
random(value);
random(valMin, valMax);
////////////////////////////////////////////////////////
MODE CONTINU
void setup(){}
void draw(){}
CTRL+T

frameRate();
frameCount

mouseX, mouseY
println();

hour();
minute();
second();
////////////////////////////////////////////////////////
////////////////////////////////////////////////////////
MÉTHODES
void mousePressed(){}
//mousePressed boolean
//mouseButton== RIGHT / LEFT
//void mouseReleased(){}
//void mouseMoved(){}
//void mouseDragged(){}

void keyPressed(){}
key==''
saveFrame();
saveFrame("filename-####.ext"); ext = either "tif", "tga", "jpg", "png"

void anything(){}
void anything(int a, int b){}
//int a(int i, int j){}
////////////////////////////////////////////////////////  
IF, WHILE, FOR
if(){}
if(){} else{}
if(){} else if(){} else{}
&& ||

while(){}

while(){
	while(){

	}
}


for(;;){}

for(;;){
  for(;;){
  	
  }
}
////////////////////////////////////////////////////////  
TEXTES
String str="une phrase";
String[] str;
loadStrings("monFichier.txt");
text("word",x,y);

println(PFont.list());

PFont font;
font = createFont("FFScala", 32);
font = createFont(name, size, smooth) smooth=true||false
textMode(SCREEN);
textFont(font);
////////////////////////////////////////////////////////  
IMAGES
PImage
loadImage();
image(img, x, y);
////////////////////////////////////////////////////////

Pour aller plus loin:
-> examples / basics / topics
http://processing.org/learning/

livre sur Processing en français PDF gratuit
http://fr.flossmanuals.net/Processing/

http://www.openprocessing.org/

Forums
http://codelab.fr/processing
http://forum.processing.org/


PROCESSING LYON par Le Club