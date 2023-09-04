size(1000, 1000);
background(255, 255, 255);

line(10, 10, 250, 10);
fill(0);
text("Lijn", 125, 25);

noFill();
rect(10, 40, 250, 100);
fill(0);
text("Rechthoek", 105, 150);

fill(0, 255, 0);
noStroke();
rect(270, 40, 250, 100);
fill(0);

stroke(0);
noFill();
ellipse(395, 90, 250, 100);
text("Gevulde rechthoek met ovaal", 300, 150);

noFill();
ellipse(670, 90, 250, 100);
text("Taartpunt met ovaal eromheen", 600, 150);

fill(0, 255, 0);
arc(670, 90, 250, 100, radians(320), radians(360));

noFill();
rect(10, 160, 250, 100, 10);
fill(0);
text("Afgeronde Rechthoek", 80, 270);

noStroke();
text("Gevulde Ovaal", 360, 270);
fill(0, 255, 0);
ellipse(395, 210, 250, 100);

stroke(0);
fill(0);
text("Cirkel", 660, 270);
noFill();
ellipse(675, 210, 100, 100);
