class Spaceship extends Floater  
{   
   public Spaceship()
   {
     corners = 4;
     xCorners = new int[corners];
     yCorners = new int[corners];
     xCorners[0] = -10;
     yCorners[0] = -10;
     xCorners[1] = 20;
     yCorners[1] = 0;
     xCorners[2] = -10;
     yCorners[2] = 10;
     xCorners[3] = 0;
     yCorners[3] = 0;
     myColor = 255; //white spaceship
     myCenterX = 200;
     myCenterY = 200;
     myXspeed = 0;
     myYspeed = 0;
     myPointDirection = 0;
   }
   public float getX()
  {
    return (float)myCenterX;
  }
  public float getY()
  {
    return (float)myCenterY;
  }
   public float getXspeed()
  {
    return (float)myXspeed;
  }
  public float getYspeed()
  {
    return (float)myYspeed;
  }
   public float getPointDirection()
  {
    return (float)myPointDirection;
  }
}
