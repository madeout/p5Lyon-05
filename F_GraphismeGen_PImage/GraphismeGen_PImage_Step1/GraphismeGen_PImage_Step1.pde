size(20, 20, P2D);
smooth();

strokeWeight(2);
stroke(0, 0, 255);
noFill();
//tous les éléments créés ensuite auront ces attributs de trait et de remplissage

color c=#FCE400;//création d'une variable de type Color

background(c);//utilisation de notre variable de 'c'
ellipse(0, 0, 20, 20);
ellipse(20, 20, 20, 20);
saveFrame("1.png");//enregistre l'image "1.png"

background(c);//effacement de l'image 1 avec le background et ré-utilisation de notre variable de 'c'
ellipse(20, 0, 20, 20);
ellipse(0, 20, 20, 20);
saveFrame("2.png");//enregistre l'image "2.png"

exit();//fait quitter le sketch

