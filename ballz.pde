import java.util.ArrayList;
Car tesla;
Car honda;
ball temp;
int j = 0;
ArrayList<ball> ballz = new ArrayList<ball>();
public void setup() {
  background(0);
  size(700, 700);
  tesla = new Car(30, 12, 150);
  honda = new Car(40, 14, 255);
}
public void draw() {

  fill(0, 0, 0, 25);
  rect(0, 0, width, height);
  if (mousePressed == true) {
    temp = new ball(20, 20, 10, mouseX, mouseY);
    ballz.add(temp);
    j = j +1;
  }
  for (int i = 0; i < j; i++) {
    ballz.get(i).move();
    ballz.get(i).display();
  }
}

