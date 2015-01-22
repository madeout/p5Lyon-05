String s = "The quick brown fox jumps over the lazy dog.";
String[] listeDesTypos;
PFont font;
int fontNum=0;

void setup() {
  size(600, 800);
  listeDesTypos = PFont.list();
  frameRate(1);
  fill(0);
  stroke(0);
}

void draw() {
  background(255);
  font = createFont(listeDesTypos[fontNum], 50, true);
  textFont(font);
  text(listeDesTypos[fontNum].toUpperCase(), 20, 20, width-20, 60);

  line(15, 70, width-15, 70);

  pushMatrix();
  // Set the left and top margin
  int margin = 6;
  int gapX = 100;
  int gapY = 70;
  translate(margin*1.5, margin*2);

  // Create a matrix of letterforms
  int counter = 0;
  for (int i=0; i<margin; i++) {
    for (int j=0; j<margin; j++) {
      char letter;

      // Select the letter
      int count = 65+(i*margin)+j;
      if (count <= 90) {
        letter = char(65+counter);
      } 
      else {
        letter = char(48+counter);
      }

      // Draw the letter to the screen
      text(letter, 20+j*gapX, 110+i*gapY);

      // Increment the counter
      counter++;
      if (counter >= 26) {
        counter = 0;
      }
    }
  }
  popMatrix();
  
  line(15, 540, width-15, 540);
  text(s, 20, 560, width-50, height-20);

  noLoop();
}

void keyPressed() {
  if (key=='s' || key=='S') {
    saveFrame(listeDesTypos[fontNum]+".jpg");
  }
  if (key==' ') {
    redraw();
    fontNum = fontNum + 1;
    if (fontNum==listeDesTypos.length) fontNum=0;
  }
}


void mousePressed() {
  redraw();
  fontNum = fontNum + 1;
  if (fontNum==listeDesTypos.length) fontNum=0;
}

void mouseMoved() {
  println(mouseY);
}

