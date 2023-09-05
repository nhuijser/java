int cijfer = 10;

switch(cijfer) {
  case 1:
  case 2:
  case 3:
    println("Je cijfer is slecht, een " + cijfer);
    break;
  case 4:
    println("Je cijfer is een onvoldoende, een " + cijfer);
    break;
  case 5:
    println("Je cijfer is matig, een " + cijfer);
    break;
  case 6:
  case 7:
    println("Je cijfer is voldoende, een " + cijfer);
    break;
  case 8:
  case 9:
  case 10:
    println("Je cijfer is goed, een " + cijfer);
    break;
  default: 
    println("Er is een verkeerd cijfer ingevoerd");
    break;
}
