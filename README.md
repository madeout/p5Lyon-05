#Processing Lyon # 05

L: J'ai mis en commentaire ce qu'il me semble pas nécessaire

###Raccourcis
->Run         : CTRL+R  
->Référence   : CTRL+MAJ+F   
->Auto indent : CTRL+T  

L: Je serais pour démarrer l'atelier directement avec le mode continu, ça peut faire gagner du temps
```
  void setup()
  {
    size(width, height);
  }
  
  void draw(){}  
  
```

###GÉOMÉTRIES DE BASE
```
  point(x, y);  
  line(x1, y1, x2, y2);  
  triangle(x1, y1, x2, y2, x3, y3);  
  quad(x1, y1, x2, y2, x3, y3, x4, y4);  
```

Est-ce qu'on montre les shapes?
```
  beginShape();   
  vertex(x,y);  
  ...  
  vertex(x,y);  
  endShape();
```

```
rect(x, y, width, height);  
ellipse(x, y, width, height);  
```

Peut être pas besoin des modes?
CRIBE: Ca peut être utile et c'est pas grand chose.
```
//rectMode(CENTER);  
//ellipseMode(CORNER);  
```
###COULEUR RGB
-> ColorSelector  
```
background();  
stroke();  
strokeWeight();  
fill();  
noStroke();  
noFill();  
```
###VARIABLES
Variables d'environnement:
```
  width, height  
  
  mouseX, mouseY  
  
  random(value);  
  random(valMin, valMax);  

  frameRate();  
  frameCount  
  
  println();  
  
  hour();  
  minute();  
  second();  
```

création et types de variables:
`int, float, string, ...`

###INTERACTION
```
  void mousePressed(){}  
  //mousePressed boolean  
  //mouseButton == RIGHT / LEFT  
  //void mouseReleased(){}  
  //void mouseMoved(){}  
  //void mouseDragged(){}  
  
  void keyPressed(){}  
  if( key == ' ' ){}  
  saveFrame();  
  saveFrame("filename-####.ext"); ext = either "tif", "tga", "jpg", "png"
```

###FONCTIONS
```
  void anything(){}  
  void anything(int a, int b){}  //fonctions avec params
  //int a(int i, int j){}  //peut être pas de fonction avec return ?
```

###CONDITIONS
CRIBE: Est-ce qu'on ferait pas les conditions avant les intéractions ?
On aborde des conditions avec keyPressed et c'est un chapitre qui devrait être rapide donc autant le faire avant.
Comme ça on peut mettre en pratique dans un exercice regroupant variables et conditions. Et aborder les interactions en connaissant les conditions ça ouvre à plus de possibilité dans les exercices.
```
  if(){}  
  if(){} else{}  
  if(){} else if(){} else{}  
  && ||  
```

###REPETITIONS
Malgré le risque de la boucle infinie, la boucle While reste quand même plus simple pour introduire les principes de répétitions
```
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
```

###TEXTES
```
  String str="une phrase";  
  text("word",x,y);  
  String[] str = loadStrings("monFichier.txt");  // demande l'introduction des tableaux....
```

###TYPO
```
  PFont font;  
  println(PFont.list());  
  font = createFont("FFScala", 32);  
  font = createFont(name, size, smooth) smooth=true||false  
  textMode(SCREEN);  
  textFont(font);
```

###IMAGES
```
  PImage  
  loadImage();  
  image(img, x, y);  
  img.resize(width, height);
  img.get( mouseX, mouseY);
```
___
Pour aller plus loin:  
-> examples / basics / topics  
http://processing.org/learning/  

livre sur Processing en français PDF gratuit  
http://fr.flossmanuals.net/Processing/  

http://www.openprocessing.org/  

Forums:  
http://codelab.fr/processing  
http://forum.processing.org/  


PROCESSING LYON par Le Club
