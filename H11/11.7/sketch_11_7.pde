import controlP5.*;
ControlP5 cp;
String[] namen = new String[10];
int count = 0;
  
Textfield textField;
Button button1;

void setup() {
  size(200, 200);
  cp = new ControlP5(this);
  
  button1 = cp.addButton("button1").setCaptionLabel("Klik hier").setPosition(75, 35).setSize(80, 20);
  textField = cp
      .addTextfield("textinput")
      .setPosition(20, 10)
      .setSize(150, 20)
      .setCaptionLabel("Typ naam");
}  

void draw() {
}

void button1() {
  namen[count] = textField.getText();
  count++;
  
  if(count == 10) {
    int pos = 80;
    textSize(12);
    println(namen);
    println("10 geraakt");
    for(int i = 0; i < 10; i++) {
      fill(0, 100, 255);
      if(i % 2 == 0) {
      text(namen[i], 120, pos);
      } else {
      text(namen[i], 40, pos);
      pos = pos + 20;
      }
      
    }
  } else {
    println("Boven of onder de 10");
    return;
  }
}
