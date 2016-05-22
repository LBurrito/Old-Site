import java.util.ArrayList;
public class Car {
  float x;
  float y;
  float speed;
  float xSize;
  float ySize;
  float paintColor;

  public Car(int newXSize, int newYSize, int newPaintColor) {
    x = (int) random(0, width);
    y = (int) random(0, height);
    xSize = newXSize;
    ySize = newYSize;
    speed = 1000/(xSize*ySize);
    paintColor = newPaintColor;
  }
  public void display() {
    fill(paintColor);
    rect(x, y, xSize, ySize);
  }
  public void move() {
    x+= speed;
    if (x > width) {
      x = -xSize;
    }
  }
}
public class ball {
  PApplet app;
  int x;
  int y;
  float xSize;
  float ySize;
  float color2;
  float speed;
  float yspeed;

  public ball(int newXSize, int newYSize, int newPaintColor, int newX, int newY) {

    x = newX;
    y = newY;
    xSize = newXSize;
    ySize = newYSize;
    speed = 3000/(xSize * ySize);
    yspeed = 3000/(xSize * ySize)*-1;
    color2 = newPaintColor;
  }
  public void display() {
    ellipse(x, y, xSize, ySize);
    strokeWeight(4);
    stroke(0, (int)random(100, 200), (int)random(100, 200));
    fill(#F6F7EB);
  }
  public void move() {
    x+= speed;
    if (x > width) {
      speed = -speed;
    } else if (x < 0) {
      speed = -speed;
    }
    y+= yspeed;
    if (y > height) {
      yspeed = -yspeed;
    } else if (y < 0) {
      yspeed = -yspeed;
    }
  }
}
public class rings {
  PApplet app;
  float x;
  float y;
  float xSize;
  float ySize;
  float color1;
  float speed;
  float yspeed;
  float radius;

  public rings(int newRadius, int newPaintColor) {
    x = random(0, width);
    y = random(0, height);
    radius = newRadius;
    speed = 10;
    yspeed = 10;
    color1 = newPaintColor;
  }
  public void display() {
    ellipse(x, y, radius*2, radius*2);
  }
  public void move() {
    x+= speed;
    if (x > width) {
      speed = -speed;
    } else if (x < 0) {
      speed = -speed;
    }
    y+= yspeed;
    if (y > height) {
      yspeed = -yspeed;
    } else if (y < 0) {
      yspeed = -yspeed;
    }
  }
  public void grow() {
    radius++;
  }
  public void shrink() {
    radius -= 5;
  }
}
Car tesla;
Car honda;
ball temp;
int j = 0;
int pm = 0;
ArrayList<ball> ballz = new ArrayList<ball>();
public void setup() {
  background(0);
  size(700, 700);
  tesla = new Car(30, 12, 150);
  honda = new Car(40, 14, 255);
}
public void draw() {
  int xx = mouseX;
  int yy = mouseY;
  noStroke();
  fill(#F6F7EB, 45);
  rect(0, 0, width, height);
  if (mousePressed == true) {
    if (millis() - pm >= 200) {
      temp = new ball(20, 20, 50, xx, yy);
      ballz.add(temp);
      j = j +1;
      pm = millis();
    }
  }
  for (int i = 0; i < j; i++) {
    ballz.get(i).move();
    ballz.get(i).display();
  }
  if (keyPressed) {
    if (key == BACKSPACE) {
      for (int i = 0; i < j; i++) {
        ballz.remove(i);
        j= j-1;
      }
    }
  }
}

