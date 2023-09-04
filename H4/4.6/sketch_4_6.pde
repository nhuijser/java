float nederlands = 5.4;
float engels = 7.5;
int gym = 10;

float cijfer = (nederlands + engels + gym) / 3;
float gemiddelde = Math.round(cijfer * 100.0) / 100.0;


if(gemiddelde >= 5.5) {
  println("gemiddelde is " + gemiddelde + " je bent geslaagd");
} else {
    println("gemiddelde is " + gemiddelde + " je bent gezakt");
}
