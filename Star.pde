class Star //note that this class does NOT extend Floater
{
  private int myX, myY, mColor;
  public Star()
  {
    myX = (int)(Math.random()*400);
    myY = (int)(Math.random()*400);
    mColor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  }
  public void show()
  {
    noStroke();
    fill(mColor);
    ellipse(myX, myY, 3, 3);
  }
}
