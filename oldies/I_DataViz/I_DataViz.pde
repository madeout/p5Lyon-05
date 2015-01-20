/*Dans cet exemple on veut analyser le nombre de A, de B, de C,..., de Z, contenus dans un texte.
 On va donc charger un texte, prendre chaque ligne une par une, et sur chaque ligne regarder chaque caractère. 
 On regarde si ce caractère est un A, on rajoute +1 à notre compteur de A, sinon on regarde si c'est un B, un C,..., jusqu'à Z.
 Si ce n'est aucune lettre de A à Z, on passe au caractère suivant.
 Si on arrive au dernier caractère de la ligne, on passe à la ligne suivante, jusqu'à la fin du texte.
 Ensuite on utilisera ces résultats pour un peu de Visualisation de Données
 
 Les étapes seront donc: obtenir des données, les découper, les analyser, et enfin exploiter les résultats de manière visuelle
 */

String[] txt;//tableau de chaînes de caractères ("phrases"), contient toutes les lignes de notre texte
int[] nbLettre;// tableau de nombre entier (Integer), pour compter le nombre de 'A',  de 'B', de 'C', ... : on a un nombre pour chaque lettre
int nbTotal;// variable pour le nombre total de lettre dans le texte

void setup() {
  size(700, 700);
  smooth();
  background(255);
  noStroke();

  nbLettre= new int[26];//on a besoin de 26 valeurs pour les 26 lettres
  for (int i=0; i<nbLettre.length; i++) {//initialisation des variables du tableau
    nbLettre[i]=0;//pour le moment on 0(zéro) A, 0 B, 0 C, ...
  }

  /////////////////////////////OBTENTION DES DONNÉES
  txt=loadStrings("http://processing.org/reference/");//on va charger ici un fichier texte/html/... tout ce qui peut être lu comme un texte
  //on peut, comme ici, chercher un document à une adresse absolue (comme une adresse internet) au lieu de copier le document dans le dossier data

  println(txt);//affichage du texte (tableau de phrases)
  println("nbre de lignes: "+txt.length);

  /////////////////////////////DÉCOUPAGE DES DONNÉES
  for (int i=0; i<txt.length; i++) {//étude de chaque ligne: on regarde chaque ligne une à une de notre tableau txt, la ligne à la position i
    txt[i]=txt[i].toUpperCase();//mise en majuscule de la ligne i ( =txt[i] ) (cf: http://processing.org/reference/String.html / http://processing.org/reference/String_toUpperCase_.html )

    for (int j=0; j<txt[i].length(); j++) {//étude de chaque caractère de la ligne txt[i]: pour chaque ligne à la position 'i', on regarde chaque caractère un à un, celui à la position 'j'

      for (int k=0; k<26; k++) {//comparaison du caractère avec chaque lettre de A à Z
        /////////////////////////////ANALYSE DES DONNÉES
        //Code ASCII des caractères de A à Z: char(65) to char(90): si on tape "char(65)" on a le 'A', char(66)='B', char'67'=C, ...
        if (txt[i].charAt(j)==char(65+k)) {//si le caractère à la position 'j' de la ligne à la position 'i' est égal au code ASCII de la lettre 'k' ('k' étant ici un nombre entre 0(A) et 25(Z) et non pas la lettre K)
                                           //(cf: http://processing.org/reference/String.html / http://processing.org/reference/String_charAt_.html ) 
          nbLettre[k]++;//alors on ajoute 1 à notre compteur de la lettre 'k' (on voit au passage la notation '++': "variable++;" est équivalent à "variable=variable+1", on parle d'incrémentation de notre variable.)
          nbTotal++;// et comme on a bien compté une lettre alors on ajoute 1 à notre compteur de nombre total de lettres
        }
      }
    }
  }

  /////////////////////////////AFFICHAGE DES RÉSULTATS
  println("tableau de lettres:");//on peut faire println("du textte");
  println(nbLettre);//on peut faire println(une_variable);
  println("nbre total de lettres: "+nbTotal);//on peut faire println("du texte" + une_variable);
  println("min: "+ min(nbLettre)+"    max: "+ max(nbLettre));//on peut faire println("du texte" + une_variable + "du texte" + une_autre_variable); et ainsi de suite...
  //min(tableau) permet d'avoir la plus petite valeur d'un tableau
  //max(tableau) permet d'avoir la plus grande valeur d'un tableau
}

void draw() {
  mode3();//on appelle la méthode "mode1()" située dans l'onglet "Modes". Choisir le mode entre 1 et 3: mode1(); // mode2(); // mode3();
  noLoop();//pas besoin de faire tourner draw() en boucle une fois l'affichage fait
}

void mousePressed() {//fonctionne avec mode3 uniquement car il y a de l'aléatoire dans ce mode, pour les autres modes Processing redessine exactement la même chose
  background(255);
  redraw();
}

