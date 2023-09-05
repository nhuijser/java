import controlP5.*;
ControlP5 cp;
String[] namen = new String[10];
int count = 0;
  
Textfield textField;
Button button1;

void setup() {
  size(200, 200);
  cp = new ControlP5(this);
  
  button1 = cp.addButton("button1").setCaptionLabel("Klik hier").setPosition(75, 75).setSize(80, 20).setText("");
  textField = cp
      .addTextfield("textinput")
      .setPosition(20, 50)
      .setSize(150, 20)
      .setCaptionLabel("Typ naam");
}  

void draw() {
}

void button1() {
  namen[count] = textField.getText();
  count++;
  
  if(count == 10) {
    println(namen);
    println("10 geraakt");
  }
}
