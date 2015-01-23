
// déclarer des tableaux 


String [] sentiments;
int [] valeurs;
color [] couleurs;

int valeurMax;
int valeurMin;

int count;
int [] fixX;
int [] fixY;

void setup() {
    size(600,500);
    background(255);

    // charger le fichier
    // pour charget un fichier texte, on utilise un tableau de chaîne de caractères 
    // chaque élément de ce tableau corerspond à une ligne du fichier texte
    String[] data = loadStrings("feelings.csv");

    // donner la taille des tableaux
    sentiments = new String[data.length];
    valeurs = new int[data.length];
    couleurs = new color[data.length];

    // parser les données
    for (int i = 0; i <  data.length; ++i) {

        // séparer les valeurs contenues entre les virgules
        String[] tmp = split(data[i], ",");

        sentiments[i] = tmp[0];
        valeurs[i] = int(tmp[1]); // convertir en entier 
        couleurs[i] = unhex(tmp[2]); // convertir en couleur
    }
    
    // vérifier les résultats
    printArray(sentiments);
    printArray(valeurs);
    printArray(couleurs);

    // trouver la valeur minimum et maximum
    valeurMax = max(valeurs);
    valeurMin = min(valeurs);

    // println(valeurMax, valeurMin);

    count = 0;
    fixX = new int[data.length];
    fixY = new int[data.length];
}

void draw() {
    background(0);
    basicViz();
    circleEpileptic();
    // pixelViz();
    clickFeeling();
}

// Afficher les 50 premières valeurs sur un axe des valeurs (et en couleur !).
void basicViz() {

    for (int i = 0; i < 50; ++i) {
        int x = round(map(valeurs[i], valeurMin, valeurMax, 0, width));
        // int y = map(valeurs[i], valeurMin, valeurMax, 0, height) ; 
        int y = i*height/50;
        fill(couleurs[i]);
        text(sentiments[i], x, y);
    }
}


// Ajouter une valeur à chaque clic 
void clickFeeling() {
    noStroke();
    int radius = 50;
    for (int i = 0; i < count; ++i) {
        fill(couleurs[i]);
        int r = round(map(valeurs[i], valeurMin, valeurMax, 0, radius));
        textSize(r);
        text(sentiments[i], fixX[i], fixY[i]);
    }
}
void mouseClicked() {
    fixX[count] = round(random(width));
    fixY[count] = round(random(height));
    count++;
}

// afficher toutes les valeurs de façon aléatoire 
void circleEpileptic() {
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

// dessine un carré pour chaque sentiment et le colorie dans la couleur associé de façon à occuper tout l'écran
void pixelViz(){
    int w = 20;
    noStroke();
    for (int i = 0; i < valeurs[i]; ++i) {
        int x = i % (width/w); 
        int y = i / (width/w);
        fill(couleurs[i]);
        rect(x*w,y*w,w,w);
    }

    // retrouver i depuis les coordonnées de la souris
    fill(0);
    int j =(mouseX/w) + (mouseY/w)*(width/w);
    text(sentiments[j], 5, 10);
}
