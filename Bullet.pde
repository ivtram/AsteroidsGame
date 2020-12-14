class Bullet extends Floater 
{
  public Bullet(Spaceship bob)
  {
    myCenterX = bob.getX();
    myCenterY = bob.getY();
    myXspeed = bob.getXspeed();
    myYspeed = bob.getYspeed();
    myPointDirection = bob.getPointDirection();
    accelerate(1);
    myColor = color(200, 50, 100);
  }
  public void show() 
  {
    fill(myColor);
    ellipse((float)myCenterX, (float)myCenterY, 6, 6);
  }
  public float getX()
  {
    return (float)myCenterX;
  }
  public float getY()
  {
    return (float)myCenterY;
  }
}
