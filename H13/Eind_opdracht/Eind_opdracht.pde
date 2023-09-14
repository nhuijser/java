int locaX = 220;
int score = 0;
int hearts = 1;
int highscore = 0;

boolean rainbow = false;
ArrayList<Obstacle> obstacles = new ArrayList<Obstacle>();
ArrayList<Upgrade> upgrades = new ArrayList<Upgrade>();
boolean gameEnd = false;
void setup() {
  size(500, 500);
  background(0);
  frameRate(60);
}

void movePlankRight() {
  locaX = locaX + 5 + Math.round(score * 0.015);
  if (locaX >= 495) locaX = -60;
}

void movePlankLeft() {
  locaX = locaX - 5 - Math.round(score * 0.015);
  if (locaX <= -60) locaX = 500;
}

void spawnobstacle(int locaX) {
  background(0);
  fill(255, 0, 0);
  rect(locaX, 450, 60, 20, 12);
}

void displayScore() {
  textFont(createFont("AppleGothic", 128));
  textSize(20);
  
  if(highscore != 0) {
   text(score + "/" + highscore, 220, 20);
  } else {
  text(score, 230, 20);
  }
}

void displayHearts() {
  textFont(createFont("AppleColorEmoji", 128));
  for(int i = 0; i != hearts; i++) {
  textSize(20);
  text("❤️" + hearts, 20 * i, 20);
  }
}

void restart() {
 score = 0;
 hearts = 1;
 obstacles.clear();
 locaX = 220;
 background(0);
 loop();
 redraw();
}

  void endOnWin() {
    if(score >= 500) {
      textFont(createFont("AppleGothic", 128));
      textSize(50);
      fill(0, 255, 0);
      text("You won", 160, 250);
      textSize(30);
      text("You had " + score + " points", 140, 280);
      text("Press ENTER to restart", 110, 310);
      noLoop();
    }
  }
  
void keyPressed() {
  if(keyCode == 10) {
    restart();
  }
   else if(keyCode == 82) {
     if(rainbow == true) {
       rainbow = false;
     } else {
    rainbow = true;
     }
  }
}

void draw() {
   if(keyCode == 39) {
    movePlankRight();
  } 
  if(keyCode == 37) {
    movePlankLeft();
  } 

  
  background(0);
  spawnobstacle(locaX);
  endOnWin();
  displayScore();
  displayHearts();
  for (int i = obstacles.size() - 1; i >= 0; i--) {
    Obstacle obstacle = obstacles.get(i);
    obstacle.display();
    obstacle.fall();
    if (obstacle.isHit(locaX)) {
      if(hearts <= 0) {
      obstacle.end();
      } else {
        obstacles.remove(i);
        hearts--;
    }
    }
    if (obstacle.isOffScreen()) {
      score++;
      obstacles.remove(i);
    }
  }
  for (int i = upgrades.size() - 1; i >= 0; i--) {
    Upgrade upgrade = upgrades.get(i);
    upgrade.display();
    upgrade.fall();
    if (upgrade.isHit(locaX)) {
     hearts++;
     upgrades.remove(i);
    }
    if (upgrade.isOffScreen()) {
      upgrades.remove(i);
    }
    
  }
    
   if(hearts <= 10) {
    if (random(1) < 0.0015) { 
    upgrades.add(new Upgrade());
    }
   }
  
    if(random(1) < 0.02 + score * 0.00012) { 
    obstacles.add(new Obstacle());
  }
}

class Obstacle {
  float x;
  float y;
  float speed;
  float r;
  float g;
  float b;

  Obstacle() {      
    r = random(0, 256);
    g = random(0, 256);
    b = random(0, 256);
    
    x = random(width);
    y = 0;
    if(score > 10) {
     speed = random(1, 3) + (score / 50);
    } else {
       speed = random(1, 3);
    }
  }

  void fall() {
    y += speed;
  }

  void display() {

    noStroke();
    fill(128, 128, 128);
    round(10);
    
    if(rainbow) fill(r, g, b);
    rect(x, y, 20, 20, 7); 
  }
  
  void end() {
      noLoop();
      textFont(createFont("AppleGothic", 128));
      textSize(50);
      fill(0, 255, 0);
      background(0);
      text("You died.", 160, 250);
      textSize(30);
      text("You had " + score + " points", 140, 280);
      text("Press ENTER to restart", 110, 310);
      
      if(score > highscore) highscore = score;
  }

  boolean isHit(int playerX) {
    return (playerX + 60 >= x && playerX <= x + 20 && y + 20 >= 450 && y <= 470);
  }

  boolean isOffScreen() {
    return y > height;
  }
  
  float obstacleX() {
    return x;
  }

}

class Upgrade {
  float x;
  float y;
  float speed;

  Upgrade() {
    x = random(width);
    y = 0;
    speed = random(1, 2);
  }

  void fall() {
    y += speed;
  }

  void display() {
    text("❤", x, y);  
  }

  boolean isHit(int playerX) {
    return (playerX + 60 >= x && playerX <= x + 20 && y + 10 >= 460 && y <= 470);
  }

  boolean isOffScreen() {
    return y > height + 20;
  }
}
