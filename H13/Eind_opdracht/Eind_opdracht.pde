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

void movePlankRight(int locationX) {
  locaX = locaX + 5 + Math.round(score * 0.015);
  if (locaX >= 495) locaX = 0;
}

void movePlankLeft(int locationX) {
  locaX = locaX - 5 - Math.round(score * 0.015);
  if (locaX <= -60) locaX = 495;
}

void spawnObject(int locaX) {
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

  void endOnWin(int locaX) {
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
    movePlankRight(locaX);
  } 
  if(keyCode == 37) {
    movePlankLeft(locaX);
  } 

  
  background(0);
  spawnObject(locaX);
  endOnWin(locaX);
  displayScore();
  displayHearts();
  for (int i = obstacles.size() - 1; i >= 0; i--) {
    Obstacle obs = obstacles.get(i);
    obs.display();
    obs.fall();
    if (obs.isHit(locaX)) {
      if(hearts <= 0) {
      obs.end(locaX);
      } else {
        obstacles.remove(i);
        hearts--;
    }
    }
    if (obs.isOffScreen()) {
      score++;
      obstacles.remove(i);
    }
  }
  for (int i = upgrades.size() - 1; i >= 0; i--) {
    Upgrade ups = upgrades.get(i);
    ups.display();
    ups.fall();
    if (ups.isHit(locaX)) {
     hearts++;
     upgrades.remove(i);
    }
    if (ups.isOffScreen()) {
      upgrades.remove(i);
    }
    
  }
    
   if(hearts <= 10) {
    if (random(1) < 0.0010) { 
    upgrades.add(new Upgrade());
    }
   }
  
    if(random(1000) < 0.02 + score * 0.00012) { 
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
    fill(10, 10, 255);
    round(10);
    
    if(rainbow) fill(r, g, b);
    rect(x, y, 20, 20, 7); 
  }
  
  void end(int locaX) {
      textFont(createFont("AppleGothic", 128));
      textSize(50);
      fill(0, 255, 0);
      text("You died.", 160, 250);
      textSize(30);
      text("You had " + score + " points", 140, 280);
      text("Press ENTER to restart", 110, 310);
      noLoop();
      
      if(score > highscore) highscore = score;
  }

  boolean isHit(int playerX) {
    return (playerX + 60 >= x && playerX <= x + 20 && y + 20 >= 450 && y <= 470);
  }

  boolean isOffScreen() {
    return y > height;
  }
}

class Upgrade {
  float x;
  float y;
  float speed;
  float r;
  float g;
  float b;

  Upgrade() {
    r = random(255);
    g = random(255);
    b = random(255);
    
    x = random(width);
    y = 0;
    speed = random(1, 2);
  }

  void fall() {
    y += speed;
  }

  void display() {
    //noStroke();
    //if(rainbow) {
    //  fill(r, g, b);
    //} else {
    //  fill(255, 10, 10);
    //}
    text("❤", x, y);  
    //ellipse(x, y, 20, 20); 
  }

  boolean isHit(int playerX) {
    return (playerX + 60 >= x && playerX <= x + 20 && y + 10 >= 450 && y <= 470);
  }

  boolean isOffScreen() {
    return y > height;
  }
}
