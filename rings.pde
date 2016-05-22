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
  
  public rings(int newRadius, int newPaintColor){
    x = random(0, width);
    y = random(0, height);
    radius = newRadius;
    speed = 10;
    yspeed = 10;
    color1 = newPaintColor;
  }
  public void display(){
    ellipse(x, y, radius*2, radius*2);
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
  public void grow(){
    radius++;
  }
  public void shrink(){
    radius -= 5;
  }
}
