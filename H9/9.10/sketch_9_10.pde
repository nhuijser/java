void setup() {
  size(500, 500);
  frameRate(4);
}

void draw() {
  noLoop();
  background(0, 150, 255);
  bos();
}

void boom(int x) {
  strokeWeight(20);
  stroke(150, 75, 0);
  line(x, 500, x, 250);
  
  noStroke();
  fill(0, 255, 0);
  ellipse(x, 150, 250, 250);
}


void bos() {
  for(int i = 0; i < 700; i = i + 100) {
    boom(i);
  }
}
