String[] namen =  {"Rida", "Nathan", "Rida"};
boolean gevonden = false;

void setup() {
  for(int i = 0; i < namen.length; i++) {
    if(namen[i] == "Nathan") {
      gevonden = true;
    }
  }
  print(gevonden);
}
