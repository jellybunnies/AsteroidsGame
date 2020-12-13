Spaceship bob = new Spaceship();
Star[] nightSky = new Star[200];
public void setup()
{
  size(400,400);
  background(0);
  for (int i = 0; i < nightSky.length; i++)
  {
    nightSky[i] = new Star();
  }
}
public void draw()
{
  background(0);
  for (int i = 0; i < nightSky.length; i++)
  {
    nightSky[i].show();
  }
  bob.show();
  bob.move();
  bob.turn(0);
  bob.accelerate(0);
  
}
public void keyPressed()
{
  //hyperspace
  if(key == 'h'){
    //bob.setXspeed(0); 
    bob.myCenterX = (Math.random()*400);
    bob.myCenterY = (Math.random()*400);
    bob.myPointDirection = (Math.random()*330 + 30);
    bob.myXspeed = 0;
    bob.myYspeed = 0;
  }
  //spin right
  if(key == 'l'){
    bob.myPointDirection = bob.myPointDirection + 30; 
  }
  //spin left
  if(key == 'k'){
    bob.myPointDirection = bob.myPointDirection - 30; 
  }
  //accelerate
  if(key == 'd'){
    bob.accelerate(1);
  }
  //decelerate
  if(key == 'a'){
    bob.accelerate(-1);
  }
  //stop
  if(key == 's'){
    bob.myXspeed = 0;
    bob.myYspeed = 0;
  }
}
