void setup()
{
  size(800, 600);
  
  // Smooth() Draws all geometry with smooth (anti-aliased) edges.
  smooth();
  
  // Set scene background color
  // background (float red, float green, float blue) form 0 to 255 each
  background(200, 75, 45);
  
  // Set shapes borders color
  // stroke (float red, float green, float blue) or stroke (float value) for grey color - form 0 to 255 each
  stroke(75, 45, 135);
  rectMode(CENTER);
  rect(100, 300, 50, 50);
  
  // Set shapes's color
  // fill (float red, float green, float blue) or fill (float value) for grey color - form 0 to 255 each
  fill(75, 45, 135);
  rectMode(CENTER);
  rect(200, 300, 50, 50);
  
  // Disable border colors
  // noStroke ()
  fill(255);
  noStroke();
  rectMode(CENTER);
  rect(300, 300, 50, 50);
  
  // Disable shapes fill colors
  // noFill ()
  stroke(75, 45, 135);
  noFill();
  rectMode(CENTER);
  rect(400, 300, 50, 50);
  
  // Set stroke weight
  // strokeWeight(float pixel)
  stroke(75, 45, 2135);
  fill(75, 145, 135);
  strokeWeight(10);
  rectMode(CENTER);
  rect(500, 300, 50, 50);
  
  // Set stroke join shape
  // strokeJoin(string type)
  strokeJoin(ROUND);
  rect(600, 300, 50, 50);
  // Notice that the rectangle inherit the previous colors
  
  // https://processing.org/reference/ to know more about color and stroke
}

void draw()
{
  
}
