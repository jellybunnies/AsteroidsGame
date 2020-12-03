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
  bob.turn(3);
  bob.accelerate(0);
  
}
