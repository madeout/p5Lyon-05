String s = "The quick brown fox jumps over the lazy dog.";// on crée une variable du type String: chaîne de caractère (pour un seul caractère voir char dans les références)
//Note aux non "initiés": cette phrase contient tous les caractères de 'a' à 'z' et est donc souvent utilisée pour présenter une typographie

String[] listeDesTypos;// on crée un tableau de type String: on pourra stocker dans ce tableau autant de String différents que nécessaires 
PFont font;// on crée une variable du type PFont pour une typographie
int fontNum=0;

void setup() {
  size(700, 300);
  listeDesTypos = PFont.list();//PFont.list() est la liste des typos installées sur l'ordinateur; notre tableau "listeDesTypos" contient tous les noms des typos grâce à cette fonction
  println(listeDesTypos);//affichage dans la console de notre tableau 
  println("nombre de typos:"+listeDesTypos.length);//tableau.length permet de connaître combien d'éléments, nous avons dans notre tableau
  //Si tableau.length=3, on a les éléments tableau[0], tableau[0] et tableau[2] (le premier élément étant toujours à la position 0 dans le tableau
  //pour accéder à un élément du tableau, pas besoin de connaître sa valeur, il suffit de connaître sa position : listeDesTypos[0], listeDesTypos[1], listeDesTypos[2], listeDesTypos[3], ...
  
  fill(0);
  stroke(0);
}

void draw() {
  background(255);
  
  font = createFont(listeDesTypos[fontNum], 50, true);//Création de notre typo: createFont(nomTypo, tailleTypo, affichageLissé);
  //"listeDesTypos[fontNum]" signifie que l'on va chercher l'élément à la position "fontNum" dans notre tableau
  textFont(font);//on indique que l'on veut utiliser la typo "font" pour le texte
  text(listeDesTypos[fontNum].toUpperCase(), 20, 50);//on affiche le texte text(nomTypo, positionX, positionY); .  ".toUpperCase()" permet de mettre nomTypo en majuscule par opposition à .toLowerCase()

  line(15, 70, width-15, 70);
  
  text(s, 20, 90, width-50, height-20);

  noLoop();
}

void keyPressed() {
  if (key=='s' || key=='S') {
    saveFrame(listeDesTypos[fontNum]+".jpg");
  }
  
  if (key==' ') {
    redraw();
    fontNum = fontNum + 1;
    if (fontNum==listeDesTypos.length) fontNum=0;
  }
}
