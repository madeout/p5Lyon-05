//dans le dossier où est enregistré notre sketch,
//on crée un sous-dossier data dans lequel on colle les images créé à l'étape 1
//Processing ira chercher les images dans ce dossier

PImage img1;//on crée 2 variables de types PImage
PImage img2;

void setup() {
  size(600, 800);
  img1=loadImage("1.png");//on charge les images voulues du sous-dossier data
  img2=loadImage("2.png");
}

void draw() {
  for (int x=0; x<width; x+=20) {//1ère boucle for pour l'axe X
    for (int y=0; y<height; y+=20) {//2nde b oucle for pour l'axe Y
      float rnd= random(2);// création d'une variable aléatoire entre 0 et 2
      
      if (rnd<1) {//si "rnd"<1 (1 étant la moitié de 2 on a 50% de chance)
        image(img1, x, y);//affichage img1 en position x,y
      }
      else {//sinon
        image(img2, x, y);//affichage img2 en position x,y
      }
    }
  }

  saveFrame("output/"+frameCount+".png");// !! sauvegarde de l'image à chaque draw() donc ok avec un noLoop() après, sinon c'est un coup à remplir votre disque dur
  
  noLoop();//permet d'arrêter 
}

void mousePressed() {
  redraw();//permet de relancer la boucle draw() lorsque l'on clique
}

