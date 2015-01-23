// There is also registred variables created by processing

void setup()
{
// displayWidth and displayHeight to get screen size
size(displayWidth, displayHeight);

// width and height are used to get the scene size;
rectMode(CENTER);
rect(width/2, height/2, 10, 10);

}

void draw()
{
  // Use frameRate() to definethe framerate of the scene and controle the void draw() refresh 
  frameRate(1);
  // frameCount show you the frame number
  println("frame number: " + frameCount);
  
  // hour(), minute() and second() get the current hour, minute and second
  println("hour: " + hour());
  println("minute: " + minute());
  println("second: " + second());
  
  // mouseX and mouseY get the position of the mouse into the scene
  println(mouseX + " | " + mouseY);
  
  // Create a square witch follows the mouse movements
  int squareSize = 15; 
  rect(mouseX, mouseY, squareSize, squareSize);
  
  // random(max) returns a random value between 0 and the max specified
  // You can also set the minim value random(min, max)
  float grey = random(255);
  fill(grey);
}
