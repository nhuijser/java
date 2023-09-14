Bird bird = new Bird();
boolean jumped = false;

void setup() {
  size(500, 500);
  background(0, 0, 255);
  frameRate(60);
}

void draw() {
  bird.spawn();
  bird.update();
  bird.checkBottom();
}

class Bird {
  float y;
  float speed;
  
  Bird() {
    y = 250;
    speed = 0;
  }
  
  void spawn() {
    noStroke();
    background(0, 0, 255);
    fill(255, 255, 204);
    ellipse(250, y, 50, 50);
  }
  
  void update() {
    y += speed;
    speed += 0.2;

    if (speed > 4) {
      speed = 4;
    }
    
    if (y >= height) {
      background(0, 0, 255);
      fill(255, 0, 0);
      text("You died", 230, 230);
    }
  }
  
  void jump() {
      speed = -4;
  }
  
  void checkBottom() {
    if(y >= height) {
      background(0, 0, 255);
      fill(255, 0, 0);
      text("You died", 230, 230);
    }
  }
}

void keyPressed() {
  if (key == ' ' || key == 'w' || key == 'W') {
    bird.jump();
  }
}
