void setup() {
  size(500, 500);
  background(0, 150, 255);
  boom();
}

void boom() {
  strokeWeight(20);
  stroke(150, 75, 0);
  line(250, 500, 250, 250);
  
  noStroke();
  fill(0, 255, 0);
  ellipse(250, 150, 250, 250);
}
