int ballX;
int ballY;
int ballR;

int wallY;

int pX;
int pY;
int pW;
int pH;

int level;

boolean levelUp;
int timer = 0;

float vX;
int vY;

void setup() 
{
  size(640, 480);
  background(230);

  initBall();
  ballR = 20;

  wallY = 5;

  pY = height-50;
  pW = 50;
  pH = 10;
}

void draw()
{
  background(230);
  pX = mouseX;

  drawBall();
  drawWall();
  drawPlayer();

  ballX += vX;
  ballY += vY;

  collision();
  level();
}

void drawBall()
{
  noStroke();
  fill(0, 100, 150);
  ellipse(ballX, ballY, ballR, ballR);
  ellipseMode(CENTER);
}

void initBall()
{
  ballX = width/2;
  ballY = height/2;
  vX = random(-3, 3);
  vY = 3;
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
  rect(pX, pY, pW, pH);
  rectMode(CENTER);
}

void collision()
{
  if (ballX > width-ballR/2 || ballX < 0+ballR/2)
  {
    ballX = constrain(ballX, 0+ballR/2, width-ballR/2);
    vX *= -1;
  }
  if (ballY > height-ballR/2)
  {
    initBall();
  } 
  if (ballX > pX-pW/2 && ballX < pX+pW/2 && ballY > pY-(pH/2+ballR/2) && ballY < pY)
  {
    vY *= -1;
  }
}

void level()
{
  if (ballY <= wallY+ballR/2)
  {
    ballY = constrain(ballY, wallY+ballR/2, height-ballR/2);
    vY *= -1.3;
    levelUp = true;
  }

  if (levelUp == true)
  {
    timer++;
    if (timer > 6)
    {
      wallY += 5;
      timer = 0;
      levelUp = false;
    }
  }
}

