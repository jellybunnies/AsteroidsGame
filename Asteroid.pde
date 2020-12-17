class Asteroid extends Floater
{
  private double rotSpeed = (Math.random()*1-2);
  public Asteroid(){
    int s = 2;
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -11*s;
    yCorners[0] = -8*s;
    xCorners[1] = 7*s;
    yCorners[1] = -8*s;
    xCorners[2] = 13*s;
    yCorners[2] = 0*s;
    xCorners[3] = 6*s;
    yCorners[3] = 10*s;
    xCorners[4] = -11*s;
    yCorners[4] = 8*s;
    xCorners[5] = -5*s;
    yCorners[5] = 0*s;
    
    myColor = color(255,255,255,200);
    myCenterX = (float)(Math.random()*600);
    myCenterY = (float)(Math.random()*600);
    myXspeed = (Math.random()*2-3)/4;
    myYspeed = (Math.random()*2-3)/4;
    myPointDirection = 0;
  }
  public void move(){
     turn(rotSpeed);
     super.move();
  }
  public float getX(){return myCenterX;}
  public float getY(){return myCenterY;}
}
