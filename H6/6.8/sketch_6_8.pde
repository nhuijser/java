float cijfer = 8;
boolean diploma = false;
boolean cumlaude = false;

if(cijfer >= 5.5){
    diploma = true;
  if(cijfer >= 8) {
    cumlaude = true;
  }
}

if(diploma){
  if(cumlaude) {
    println("je bent cumlaude geslaagd");
  } else {
  println("gefeliciteerd");
  }
}
