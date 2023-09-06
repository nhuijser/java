boolean started = false;
boolean restart = false;
double time;
int changeTime;

void setup() {
frameRate(60);
textAlign(CENTER, CENTER);
textSize(40);
background(255, 0, 0);
text("Press SPACE to start", 250, 250);
size(500, 500);
}

void draw() {
}

void keyReleased() {
  if(keyCode == 32) {
    if(started == true) return;
    if(started == false || restart == true) {
      background(255, 0, 0);
      changeTime = 0;
      
      started = true;
      time = (millis() + Math.random() * 7500);
      while(millis() <= time) {
      println(millis());
      } 
      
      background(0, 255, 0);
      changeTime = millis();
      
    }
    
  }
}

void keyPressed() {
  if(keyCode == 32) {
    if(started == false) {
      background(255, 0, 0);
      return;
    }
    int reactionSpeedInMs = millis() - changeTime;
    textAlign(CENTER, CENTER);
    textSize(40);
    text(reactionSpeedInMs + "ms ", 250, 250);
    text("Click SPACE to play again", 250, 300);
    restart = true;
    
    time = 0;
    reactionSpeedInMs = 0;
  }
}
