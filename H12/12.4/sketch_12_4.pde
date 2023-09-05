int timeStart = 0;
int timeEnd = 0;
int totalTime;

boolean started = false;
void setup() {
  println("Press space to start");
}

void draw() {
  
}

void keyReleased() {
 if(keyCode != 32) return;
 if(started) {
   timeEnd = millis();
   
   totalTime = timeEnd - timeStart;
   
   println("Total time " + totalTime + "ms");
 } else {
   timeStart = millis();
   println("Stopwatch started! Click space again to stop");
   started = true;
 }
}
