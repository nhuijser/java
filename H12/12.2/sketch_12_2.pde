int endTime = 0;
int count = 0;
boolean started = false;

void draw() {
  while(started) {
  if(endTime == 0) return;
  if(millis() >= endTime) {
    println("Ended, clicked " + count + " times!");
    started = false;
    count = 0;
  } else {
    return;
  }
  }
}

void keyReleased() {
  if(keyCode != 32) return; 
  if(started == false) {
    endTime = millis() + 5000;
    count++;
    println("Started timing! Go!");
    started = true;
  } else {
    println("1 added, currently at: " + count);
    count++;
  }
}
