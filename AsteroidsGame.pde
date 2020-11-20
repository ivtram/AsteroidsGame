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
    bob.accelerate(0.5);
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
    bob.accelerate(-0.5);
  }
  if (key == '1')
  {
    bob.myXspeed = 0;
    bob.myYspeed = 0;
    bob.myCenterX = (int)(Math.random()*390);
    bob.myCenterY = (int)(Math.random()*390);
    bob.myPointDirection = (int)(Math.random()*360);
  }
}

