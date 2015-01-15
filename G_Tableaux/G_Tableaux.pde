//au lieu de créer 50 variables ou plus manuellement pour par exemple stocker les positons X de 50 éléments, on peut créer un tableau (Array dans les références):
//on déclare un tableau contenant uniquement des Integer: int[]
//on peut attribuer les valeurs manuellement si besoin
int[] tableau1 = { 
  5, 12, 18, 20, 35, 58, 92
};

println("tableau1:");
println(tableau1);


background(255);

stroke(0);

//maintenant on va chercher chacune des valeurs de notre tableau avec une boucle for:
for (int position=0; position<tableau1.length; position=position+1) {//tableau1.length=nombre d'éléments dans tableau1
  line(10, tableau1[position], width-10, tableau1[position]);//on va chercher l'élément à la position 'i' dans tableau1
}


float y=10;
float[] tableau2;//on déclare un tableau contenant uniquement des Float
tableau2= new float[7];//ici on crée notre tableau2 en indiquant le nombre de Float que l'on veut dans tableau2: tableau2= nouveau tableau de type float avec 7 "cases" vides pour le moment

for (int position=0; position<tableau2.length; position=position+1) {// on attribue les valeurs de chaque éléments de tableau2
  tableau2[position] = y;
  y=y*1.5;//on augmente la valeur de y à chaque tour de la boucle for
}
println("tableau2:");
println(tableau2);

stroke(0, 255, 0);
for (int i=0; i<tableau2.length; i=i+1) {//tableau2.length=nombre d'éléments dans tableau2
  line(10, tableau2[i], width-10, tableau2[i]);//on va chercher l'élément à la position 'i' dans tableau2
}

/*
//on pourrait aussi créer un tableau de type PImage:
 PImage[] mesImages;
 mesImages = new PImage[200];//mesImages est un tableau de type PImage avec 200 places pour stocker des images
 for(int i=0; i<mesImages.length; i=i+1){
   mesImages[i]=loadImage(i+".png");//toutes nos images s'appellent "0.png", "1.png", "2.png", ... 
 }
 //pour l'affichage:
 for(int i=0; i<mesImages.length; i=i+1){
   image(mesImages[i], random(width), random(height));
 }
 */
