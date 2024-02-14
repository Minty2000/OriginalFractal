int heartSize = 600;//size of heart 
void setup() {
  size(500, 500);
}

void draw() {
  background(0);  // Add a background to clear the previous frames
  int startX = (width - heartSize) / 2; 
  myFractal(startX, 250, heartSize);
  
}

void myFractal(int x, int y, int size) {
  smooth();
  noStroke();
  fill(230, 0, 0);
  //start of the heart shape
  beginShape();
  vertex(50 * size / 100 + x, 15 * size / 100 + y);
  bezierVertex(50 * size / 100 + x, -5 * size / 100 + y, 90 * size / 100 + x, 5 * size / 100 + y, 50 * size / 100 + x, 40 * size / 100 + y);
  vertex(50 * size / 100 + x, 15 * size / 100 + y);
  bezierVertex(50 * size / 100 + x, -5 * size / 100 + y, 10 * size / 100 + x, 5 * size / 100 + y, 50 * size / 100 + x, 40 * size / 100 + y);
  endShape();
  //end of the heart shape 
  if (size > 1) {
    myFractal(x, y, size / 2);
    myFractal(x + size / 2, y, size / 2);
    
  }
  fill(255);
  textSize(25);
  textAlign(CENTER,CENTER);
    text("Be my Valentine?", x+size/2,  y+size/3-250);
}
