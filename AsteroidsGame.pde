Spaceship bob = new Spaceship();
Star[] nightSky = new Star[300];
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
ArrayList <Bullet> shots = new ArrayList <Bullet>();
public void setup()
{
  size(600,600);
  background(0);
  for (int i = 0; i < nightSky.length; i++)
  {
    nightSky[i] = new Star();
  }
  for (int i = 0; i < 15; i++)
  {
    rocks.add(new Asteroid());
  }
}
public void draw()
{
  background(0);
  for (int i = 0; i < nightSky.length; i++)
  {
    nightSky[i].show();
  }
  for (int i = 0; i < rocks.size(); i++)
  {
    rocks.get(i).move();
    rocks.get(i).show();
    float d = dist(bob.getX(), bob.getY(), rocks.get(i).getX(), rocks.get(i).getY());
    if(d < 30)
      rocks.remove(i);
  }
  bob.show();
  bob.move();
  bob.turn(0);
  bob.accelerate(0);
  for (int i = 0; i < shots.size(); i++)
  {
    shots.get(i).move();
    shots.get(i).show();
  }
}
public void keyPressed()
{
  //hyperspace
  if(key == 'h'){
    //bob.setXspeed(0); 
    bob.myCenterX = (Math.random()*600);
    bob.myCenterY = (Math.random()*600);
    bob.myPointDirection = (Math.random()*330 + 30);
    bob.myXspeed = 0;
    bob.myYspeed = 0;
  }
  //spin cw
  if(key == 'l'){
    bob.turn(30); 
  }
  //spin ccw
  if(key == 'k'){
    bob.turn(-30); 
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
  //bullets
  if(key == ' '){
    shots.add(new Bullet(bob));
  }
}
