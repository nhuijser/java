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
