int heartSize = 200;  

public void setup() {
  size(800, 300);
}

public void draw() {
  myFractal(250, 250, heartSize);
  heartSize -= 2;
}

public void myFractal(int x, int y, int size) {
  if (size < 1) {

    beginShape();
    curveVertex(150+x, 600);
    curveVertex(150+x, 270);
    curveVertex(30+x, 150);
    curveVertex(75+x, 75);
    curveVertex(150+x, 100);
    curveVertex(150+x, 300);
    endShape();

    //right half of heart
    beginShape();
    curveVertex(150+x, 300);
    curveVertex(150+x, 100);
    curveVertex(225+x, 75);
    curveVertex(270+x, 150);
    curveVertex(150+x, 270);
    curveVertex(150+x, 600);
    endShape();
  } else {
    fill((float)Math.random()*256+100-1, 0, 0);
    myFractal(x - size/2, y, size/2);
    myFractal(x + size/2, y, size/2);
  }
}
