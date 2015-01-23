///formes de base:
size(100,100);//taille de la fenêtre(largeur,hauteur)
smooth();//permet de lisser l'affichage
background(255);//couleurFond(niveauGris) on peut aussi en RVB couleurFond(rouge,vert,bleu) pas de transparence pour le background

stroke(0);//couleur du trait de 0 à 255 en niveaux de gris: 0=noir, 255=blanc
point(10, 20);//coordonnées x, y d'1 point

stroke(0, 255, 0);//couleur du trait de 0 à 255 pour le rouge, le vert, le bleu
line(15, 20, 30, 55);//coordonnées x, y de 2 points

noStroke();//pas de trait
fill(0, 0, 255, 120);//remplissage(rouge,vert,bleu,transparence)
triangle(20, 20, 35, 55, 60, 10);//coordonnées x, y de 3 points

stroke(255, 0, 255, 120);//contour(rouge,vert,bleu,transparence)
strokeWeight(4);//épaisseur du contour
noFill();//pas de remplissage
quad(40, 55, 65, 10, 85, 20, 92, 53);//coordonnées x, y de 4 points

ellipse(30, 80, 40, 15);//ellipse(centreX, centreY, largeur, hauteur)

stroke(0);//trait(niveauGris)
strokeWeight(1);//épaisseur du trait
fill(0,120);//remplissage(niveauGris,transparence);
rect(70,75, 25,15);
