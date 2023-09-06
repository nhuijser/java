int x = 200;
int y = 200;
int w = 100;
int h = 100;

void setup() {
  size(500, 500);
}  

void draw() {
    background(0);
    rect(x, y, w, h);
}

void keyReleased() {
  if(keyCode == 39) {
    x = x + 10;
  } else if(keyCode == 37) {
    x = x - 10;
  }  else if(keyCode == 38) {
    y = y - 10;
  } else if(keyCode == 40) {
    y = y + 10;
  }
}
