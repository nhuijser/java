int lastX;
int lastY;
boolean started = false;
void setup() {
  
}

void draw() {
}

void mouseReleased() {
if(started == false) {
  line(10, 10, 30, 30);
  started = true;
  lastX = 30;
  lastY = 30;
} else {
  line(lastX, lastY, mouseX, mouseY);
  lastX = mouseX;
  lastY = mouseY;
}


  }
