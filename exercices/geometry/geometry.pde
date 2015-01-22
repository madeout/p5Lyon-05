void setup()
{
  size(800, 600);
  
  // Create a point
  // point (float positionX, float positionY)
  point(100, 300);
  
  // Create a line
  // line (float posXA, float posYA, float posXB, float posYB)
  line(200, 200, 200, 400);

  // Create a rectangle
  // rect (float posX, float posY, float width, float height)
  rect(250, 250, 100, 150);
  
  // Create an ellipse
  // ellipse (float posX, float posY, float width, float height)
  ellipse(400, 300, 50, 50); 
  
  // Create a triangle
  // triangle (float posX1, float posY1, float posX2, float posY3, float posX3, float posY3)
  triangle(475, 350, 500, 250, 525, 350);
  
  // Create a quadrilatere (same idea as triangle)
  // quad (float posX1, float posY1, float posX2, float posY3, float posX3, float posY3, float posX3, float posY3)
  quad(600, 250, 650, 325, 625, 350, 600, 300 );
  
  // Create custom shape with a custom number of points
  // beginShape();
  // vertex(float posX, float posY);
  // ...
  // vertex(float posX, float posY);
  // endShape();
  beginShape();
  vertex(700, 250);
  vertex(725, 225);
  vertex(750, 300);
  vertex(715, 315);
  vertex(700, 300);
  endShape();
  
  // With ellipseMode you choose a mode of position (CENTER, CORNER...) - CORNER by default - See more on documentation
  // ellipseMode (string mode);
  ellipseMode(CENTER);
  ellipse(300, 500, 50, 50);
  ellipse(300, 500, 25, 25);
  
  ellipseMode(CORNER);
  ellipse(600, 500, 50, 50);
  ellipse(600, 500, 25, 25);
  
  // rectMode same as ellipseMode
  // rectMode (string mode);
  ellipseMode(CENTER);
  
  // https://processing.org/reference/ to know more about other geometric shapes
  // arc(), bezier() ...
}

void draw()
{

}
