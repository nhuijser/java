size(1000, 1000);
background(255,255,255);

int sizeC = 500;

for(int i = 0; i <= 50; i++){
  ellipse(0, 0, sizeC, sizeC);
  sizeC = sizeC - 10;
}
