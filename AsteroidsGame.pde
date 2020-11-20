Spaceship bob = new Spaceship();
Star [] spark = new Star[200];
public void setup() 
{
  size(400, 400);
  background(0);
  bob.turn(90);
  bob.accelerate(0.2);
  for (int i = 0; i < spark.length; i++)
  {
    spark[i] = new Star();
  }
}
public void draw() 
{
  //your code here
  background(0);
  for (int i = 0; i < spark.length; i++)
  {
    spark[i].show();
  }
  bob.show();
  bob.move();
}
public void keyPressed()
{
  if (key == 'w') 
  {
    bob.accelerate(0.2);
  }
  if (key == 'a')
  {
    bob.turn(-30);
  }
  if (key == 'd')
  {
    bob.turn(30);
  }
  if (key == 's')
  {
    bob.accelerate(-0.2);
  }
}

