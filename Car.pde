public class Car {
  float x;
  float y;
  float speed;
  float xSize;
  float ySize;
  float paintColor;
  
  public Car(int newXSize, int newYSize, int newPaintColor){
    x = (int) random(0, width);
    y = (int) random(0, height);
    xSize = newXSize;
    ySize = newYSize;
    speed = 1000/(xSize*ySize);
    paintColor = newPaintColor;
  }
  public void display(){
    fill(paintColor);
    rect(x, y, xSize, ySize);
  }
  public void move(){
    x+= speed;
    if (x > width){
      x = -xSize;
    }
  }
}
