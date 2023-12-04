//your variable declarations here
boolean w = false;
boolean a = false;
boolean s = false;
boolean d = false;
boolean hyper = false;
boolean mc = false;
int moons = 10;
Spaceship Pine = new Spaceship();
Star[] Snowflake = new Star[100];
ArrayList <Asteroid> Moons = new ArrayList <Asteroid>();

public void setup()
{
  size(800, 800);
  for (int s = 0; s < Snowflake.length; s++)
  {
    Snowflake[s] = new Star();
  }
  for (int i = 0; i < moons; i++) {
    Moons.add(new Asteroid());
  }
}

public void draw()
{
  if (mc) {
    background(#718EBB);
    for (int s = 0; s < Snowflake.length; s++)
    {
      Snowflake[s].show();
      Snowflake[s].move();
    }
    
    Pine.show();
    
    for (int i = 0; i < moons; i++) {
      Moons.get(i).move();
      Moons.get(i).show();
      if(Moons.get(i).getmyCenterX() == Pine.getmyCenterX() && Moons.get(i).getmyCenterY() == Pine.getmyCenterY()){
        Moons.set(i, new Asteroid());
        Moons.get(i).move();
        Moons.get(i).show();
      }
    }

    Pine.show();
    if (w)
    {
      if (Math.sqrt(Math. pow((float)Pine.getmyXspeed(), 2) + Math.pow((float)Pine.getmyYspeed(), 2)) < 6)
      {
        Pine.accelerate(0.1);
        Pine.move();
      }
      Pine.move();
    } else if (!s && !w)
    {
      Pine.setmyXspeed(0);
      Pine.setmyYspeed(0);
    }

    if (s)
    {
      if (Math.sqrt(Math. pow((float)Pine.getmyXspeed(), 2) + Math.pow((float)Pine.getmyYspeed(), 2)) < 6)
      {
        Pine.accelerate(-0.1);
        Pine.move();
      }
      Pine.move();
    }

    if (a)
    {
      Pine.turn(-7);
    }

    if (d)
    {
      Pine.turn(7);
    }

    if (hyper)
    {
      Pine.setmyCenterX((int)(Math.random() * 801));
      Pine.setmyCenterY((int)(Math.random() * 801));
      Pine.setmyPointDirection((int)(Math.random() * 361));
      Pine.setmyXspeed(0);
      Pine.setmyYspeed(0);
      for (int s = 0; s < Snowflake.length; s++)
      {
        Snowflake[s] = new Star();
      }
      hyper = false;
    }
  }else{
    background(#718EBB);
    for (int s = 0; s < Snowflake.length; s++)
    {
      Snowflake[s].show();
      Snowflake[s].move();
    }
  }
}

public void mousePressed() {
  mc = true;
}

public void keyPressed()
{
  if (key == 'w')
  {
    w = true;
  }

  if (key == 'a')
  {
    a = true;
  }

  if (key == 's')
  {
    s = true;
  }

  if (key == 'd')
  {
    d = true;
  }

  if (key == 'q')
  {
    hyper = true;
  }
}

public void keyReleased()
{
  if (key == 'w')
  {
    w = false;
  }

  if (key == 'a')
  {
    a = false;
  }

  if (key == 's')
  {
    s = false;
  }

  if (key == 'd')
  {
    d = false;
  }
}
