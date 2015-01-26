# Processing Lyon #05

Cours d'initiation à [PROCESSING](http://processing.org) par [Le Club](http://leclub.github.io/p5lyon/).

![Processing IDE](https://raw.githubusercontent.com/clemsos/processing101/master/images/800px-Processing-ide.png)

###Raccourcis

->Run         : CTRL+R  
->Référence   : CTRL+MAJ+F   
->Auto indent : CTRL+T  

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

```
  rectMode(CENTER);  
  ellipseMode(CORNER);  
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

###CONDITIONS
```
  if(){}  
  if(){} else{}  
  if(){} else if(){} else{}  
  && ||  
```

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

###REPETITIONS
```
  int compteur = 0;
  while( compteur < 10 )
  {
    compteur = compteur + 1;
    ... doSomething
  }  
```
imbrication de plusieurs boucles while
```
int compteurA = 0;
  while(compteurA < 100){  
    compteurA = compteurA + 1;
    ... doSomething
    
    int compteurB = 0;
    while(conditionB < 20){  
      compteurB = compteurB + 1;
      ... doSomething
    }   
  }
```
```
  for(int compteur = 0; compteur< 100; compteur = compteur + 1)
  {
    ... doSomething
  }
```
imbrication de plusieurs boucles for
```
  for( int compteurA = 0; compteurA < 100; compteurA = compteurA + 1 ){  
    for( int compteurB = 0; compteurB < 100; compteurB = compteurB + 1 ){  
      ... doSomething
    }  
  }  
```

###TEXTES
```
  String str="une phrase";  
  text("word",x,y);  
  String[] str = loadStrings("monFichier.txt");
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
