//déclaration de nos variables globales

// positions x et y, rayon et vitesses en x et en y de la balle
float ballX;
float ballY;
int ballDiametre = 20;
float vitesseX;
float vitesseY;

//position y du mur
int wallY = 5;

// positions et dimmensions du joueur
int playerX;
int playerY;
int playerWidth = 80;
int playerHeight = 10;

// objectif
float goalX;
float goalY;
int goalDiametre = 40;

// score
int score = 0;

void setup()
{
    size(600, 800);
    background(230);
    rectMode(CENTER);// on définit que les rectangles seront dessinés par rapport à leur centre
    noCursor();//permet de masquer le pointeur de la souris
    textSize(20);

    // nouse pouvons créer nos propres fonctions et les appeler par leur nom + () pour éxécuter les instructions qu'elles contiennent
    //ici la fonction resetGame() que l'on trouve définie plus bas permet de centrer la balle, initialiser le score et la position du plafond
    resetGame();

    playerY = height-50; // initialisation de la position y du joueur

    //initialisation aléatoire de la position de l'objectif
    positionGoal();
}

void draw()
{
    //nous mettons à jour les coordonnées du joueur et de la balle
    playerX = mouseX;
    ballX = ballX + vitesseX;
    ballY = ballY + vitesseY;

    // on vérifie les collisions de la balle dans la fonction collision()
    collision();


    background(230);
    drawGoal();
    drawBall(); // on appelle la fonction drawBall pour dessiner la balle
    drawWall(); // on appelle la fonction drawWall pour dessiner le plafond
    drawPlayer(); // on appelle la fonction drawPlayer pour dessiner la raquette

    text("score:" + score, 5, 20);
}


void resetGame()
{
    ballX = width/2;
    ballY = height/2;
    vitesseX = random(-3, 3);
    vitesseY = 3;
    
    score = 0;
    wallY = 5;
}

void positionGoal()
{
    goalX = random(goalDiametre, width - goalDiametre);
    goalY = random(wallY + goalDiametre, playerY - goalDiametre);
}

void drawGoal()
{
    fill(200, 30, 30);
    ellipse(goalX, goalY, goalDiametre, goalDiametre);
}

void drawBall()
{
    noStroke();
    fill(0, 100, 150);
    ellipse(ballX, ballY, ballDiametre, ballDiametre);
    ellipseMode(CENTER);
}

void drawWall()
{
    stroke(0);
    strokeWeight(5);
    noFill();
    line(0, wallY, width, wallY);
}

void drawPlayer()
{
    noStroke();
    fill(120);
    rect(playerX, playerY, playerWidth, playerHeight);
}

void collision()
{
    //collision avec les côtés
    //si collision à droite OU à gauche	
    if (ballX > width-ballDiametre/2 || ballX < ballDiametre/2)
    {
        ballX = constrain(ballX, 0+ballDiametre/2, width-ballDiametre/2); //on limite la position de la balle pour être sûr que la balle reste dans le programme
        vitesseX = -vitesseX; //on inverse la vitesse en X
    }

    // si la balle sort par le bas du programme
    if (ballY > height-ballDiametre/2)
    {
        resetGame();// on ré initialise la balle
    } else if (ballY-ballDiametre/2 < wallY) {//ou si position de la balle dépasse le plafond
        //on remet la balle en dessous du plafond
        ballY = wallY + ballDiametre/2 + 3;
        // et on inverse la vitesse en y de la balle
        vitesseY = -vitesseY;
    }

    //collision de la balle avec la raquette du joueur
    // il y a collision si la balle rentre dans la raquette, c'est à dire
    if ( ballX > playerX-playerWidth/2 	// si la position X de la balle est supérieure au côté gauche de la raquette (position du joueur moins moitié de sa largeur)
    && ballX < playerX+playerWidth/2 	// et si la position X de la balle est inférieure au côté droit de la raquette (position du joueur plus moitié de sa largeur)
    && ballY > playerY-playerHeight/2 	// et si la position Y de la balle est supérieure au côté droit de la raquette (position du joueur moins moitié de sa hauteur)
    && ballY < playerY+playerHeight/2 ) // et si la position Y de la balle est inférieure au côté droit de la raquette (position du joueur plus moitié de sa hauteur)
    {	
        ballY = playerY-playerHeight/2; //on sort la balle de la raquette en remontant sa position y

        vitesseY = -vitesseY;// on inverse la vitesse en y de la balle

        //on calcule la vitesse en x de la balle en fonction de la position où elle tape la raquette
        // si la balle tape la raquette tout à gauche la vitesse en x sera égale à -3
        // si la balle tape la raquette tout à droite la vitesse en x sera égale à 3
        // entre les deux extrèmes, varie de -3 à 3 de manière proportionnelle
        vitesseX = map( ballX, playerX-playerWidth/2, playerX+playerWidth/2, -3, 3 );

        //on ajoute un point au score
        score = score + 1;

        // enfin on abaisse le plafond de 5playerX, jusqu'à un maximum de height/2
        wallY = min( wallY + 5, height/2 ) ;
    }

    // collision de la balle avec l'objectif
    // pour calculer la collision entre deux cercles, 
    // il faut mesurer la distance entre les deux centres
    // et vérifier si cette distance est inférieure à la somme de leurs rayons 
    if ( dist(ballX, ballY, goalX, goalY) <= (ballDiametre/2 + goalDiametre/2) ) {
        score = score + 10;//on augmente le score
        positionGoal();//on donne une nouvelle position à l'objectif
        vitesseY = min( vitesseY * 1.3, 9 ); // et on augmente la vitesse avec un maximum de 9
    }
}

