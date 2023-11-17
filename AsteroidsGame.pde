//your variable declarations here
boolean w = false;
boolean a = false;
boolean s = false;
boolean d = false;
boolean hyper = false;
Spaceship Pine = new Spaceship();
Star[] Snowflake = new Star[100];

public void setup()
{
  size(600, 600);
  for (int s = 0; s < Snowflake.length; s++)
  {
    Snowflake[s] = new Star();
  }
}
public void draw()
{
  background(#718EBB);
  for (int s = 0; s < Snowflake.length; s++)
  {
    Snowflake[s].show();
    Snowflake[s].move();
  }
  Pine.show();
  if (w)
  {
    if(Math.sqrt(Math. pow((float)Pine.getmyXspeed(), 2) + Math.pow((float)Pine.getmyYspeed(), 2)) < 6)
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
    Pine.setmyCenterX((int)(Math.random() * 601));
    Pine.setmyCenterY((int)(Math.random() * 601));
    Pine.setmyPointDirection((int)(Math.random() * 361));
    Pine.setmyXspeed(0);
    Pine.setmyYspeed(0);
    for (int s = 0; s < Snowflake.length; s++)
    {
      Snowflake[s] = new Star();
    }
    hyper = false;
  }
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
