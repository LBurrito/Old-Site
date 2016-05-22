public class ball {
  PApplet app;
  int x;
  int y;
  float xSize;
  float ySize;
  float color2;
  float speed;
  float yspeed;
  
  public ball(int newXSize, int newYSize, int newPaintColor, int newX, int newY){

    x = newX;
    y = newY;
    xSize = newXSize;
    ySize = newYSize;
    speed = 5000/(xSize * ySize);
    yspeed = 5000/(xSize * ySize)*-1;
    color2 = newPaintColor;
  }
  public void display(){
    ellipse(x, y, xSize, ySize);
    strokeWeight(4);
    stroke((int)random(200, 255), 0, 0);
    fill(0);
  }
  public void move(){
    x+= speed;
    if (x > width){
      speed = -speed;
    }
    else if (x < 0){
      speed = -speed;
    }
    y+= yspeed;
    if (y > height){
      yspeed = -yspeed;
    }
    else if (y < 0){
      yspeed = -yspeed;
    }
  }
}
