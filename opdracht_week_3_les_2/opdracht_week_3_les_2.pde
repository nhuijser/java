// true
// false
// false
// false

// true 
// true
// true
// false

// true
// true
// false
// true
// true

// false
// true
// true
// true
// true

// b

int temperatuurCelsius = 28;

if(temperatuurCelsius > 25 && temperatuurCelsius < 30) {
  println("warm");
}


int temperatuurCelsius2 = 30;

if(temperatuurCelsius2 >= 30) {
  println("heet");
} else {
  println(temperatuurCelsius2);
}

int speler1Score = 31;
int speler2Score = 32;

if(speler1Score > speler2Score) {
  println("speler1 heeft gewonnen");
} else if(speler2Score > speler1Score) {
  println("speler2 heeft gewonnen");
} else if(speler1Score == speler2Score) {
  println("het is gelijkspel");
}

int x = 5;
int y = 11;
if(x > 10) {
  x = x -5;
  if(x > 10 || y <= 10) {
    x++;
    y++;
  }
} else {
  println("yo");
}

int lessen = 17;
int totaalLessen = 20;
float cijfer = 7;
int lessenPercentage = 100 / totaalLessen * lessen;

if(lessenPercentage >= 80 && cijfer >= 5.5) {
  println("geslaagd");
} else {
  println("niet geslaagd");
}

int lessen2 = 16;
int totaalLessen2 = 20;
float cijfer2 = 5.5;
int lessenPercentage2 = 100 / totaalLessen2 * lessen2;
if(lessenPercentage2 >= 80 && cijfer2 >= 5.5) {
  println("geslaagd");
} else {
  println("niet geslaagd");
}




boolean spelerRaaktVijand();
boolean spelerPaktAppel();
boolean spelerIsOnoverwinnelijk();
int voegPuntToeAanScore();

if(spelerPaktAppel()) {
  voegPuntToeAanScore();
}

if(spelerRaaktVijand() && spelerIsOnoverwinnelijk()) {
  voegPuntToeAanScore();
} else if(spelerRaaktVijand() && spelerIsOnoverwinnelijk() == false) {
  println("af");
}


// 2 en 4
