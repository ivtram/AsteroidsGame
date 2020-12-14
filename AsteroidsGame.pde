Spaceship bob = new Spaceship();
Star [] spark = new Star[200];
ArrayList <Asteroid> rock = new ArrayList <Asteroid>();
ArrayList <Bullet> shoot = new ArrayList <Bullet>();
public void setup() 
{
  size(600, 600);
  background(0);
  bob.turn(90);
  bob.accelerate(0.2);
  for (int i = 0; i < spark.length; i++)
  {
    spark[i] = new Star();
  }
  for (int j = 0; j < 30; j++)
  {
    rock.add(new Asteroid());
  }
}
public void draw() 
{
  background(0);
  for (int i = 0; i < spark.length; i++)
  {
    spark[i].show();
  }
  bob.show();
  bob.move();
  for (int j = 0; j <rock.size(); j++)
  {
    rock.get(j).show();
    rock.get(j).move(); 
    if (dist(rock.get(j).getX(), rock.get(j).getY(), bob.getX(), bob.getY())< 20)
    {
      rock.remove(j);
    }
    for (int k = 0; k < shoot.size(); k++)
    {
      shoot.get(k).show();
      shoot.get(k).move();
      if (dist(shoot.get(k).getX(), shoot.get(k).getY(), rock.get(k).getX(), rock.get(k).getY()) < 20)
      {
        shoot.remove(k);
        rock.remove(j);
      }
    }
  }
}
public void keyPressed()
{
  if (key == 'w') 
  {
    bob.accelerate(0.3);
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
    bob.accelerate(-0.3);
  }
  if (key == '1')
  {
    bob.myXspeed = 0;
    bob.myYspeed = 0;
    bob.myCenterX = (int)(Math.random()*590);
    bob.myCenterY = (int)(Math.random()*590);
    bob.myPointDirection = (int)(Math.random()*360);
  }
  if (key == ' ')
  {
    shoot.add(new Bullet(bob));
  }
}
