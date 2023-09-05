void setup() {
  size(500, 500);
}

void draw() {
  
}

void mouseDragged() {
float red = Math.round(Math.random() * 255);
float green = Math.round(Math.random() * 255);
float blue = Math.round(Math.random() * 255);

fill(red, green, blue);
noStroke();
rect(mouseX, mouseY, 10, 10);
}
