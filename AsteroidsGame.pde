//your variable declarations here
boolean w = false;
boolean a = false;
boolean s = false;
boolean d = false;
boolean hyper = false;
boolean shoot = false;
boolean mc = false;
double cooldown = 0;
int lives = 3;
int stockings = 10;
Spaceship Pine = new Spaceship();
Star[] Snowflake = new Star[100];
ArrayList <Asteroid> Stocking = new ArrayList <Asteroid>();
ArrayList <Bullet> acorn = new ArrayList <Bullet>();

public void setup()
{
  size(800, 800);
  for (int s = 0; s < Snowflake.length; s++)
  {
    Snowflake[s] = new Star();
  }
  for (int i = 0; i < stockings; i++) {
    Stocking.add(new Asteroid());
  }
}

public void draw()
{
  cooldown -= 1.0 / frameRate;
  if (mc) {
    background(#718EBB);
    for (int s = 0; s < Snowflake.length; s++)
    {
      Snowflake[s].show();
      Snowflake[s].move();
    }
    Pine.show();
    for (int i = 0; i < acorn.size(); i++) {
      if (shoot &&
        Math.sqrt(Math.pow((float)acorn.get(i).getmyXspeed(), 2) + Math.pow((float)acorn.get(i).getmyYspeed(), 2)) < 6) {
        acorn.get(i).accelerate(6);
      }
      acorn.get(i).show();
      acorn.get(i).move();
    }
    shoot = false;

    for (int i = 0; i < Stocking.size(); i++) {
      Stocking.get(i).move();
      Stocking.get(i).show();
    }
    for (int i = Stocking.size() - 1; i >= 0; i--) {
      if (dist((float)Stocking.get(i).getmyCenterX(), (float)Stocking.get(i).getmyCenterY(), (float)Pine.getmyCenterX(), (float)Pine.getmyCenterY()) < 6) {
        Stocking.remove(i);
      }
    }

    for (int i = Stocking.size() - 1; i >= 0; i--) {
      for (int j = acorn.size() - 1; j >= 0; j--) {
        if (dist((float)Stocking.get(i).getmyCenterX(), (float)Stocking.get(i).getmyCenterY(), (float)acorn.get(j).getmyCenterX(), (float)acorn.get(j).getmyCenterY()) < 5) {
          Stocking.remove(i);
          acorn.remove(j);
        } else if (acorn.get(j).getmyCenterX() <= 0 || acorn.get(j).getmyCenterX() >= 800|| acorn.get(j).getmyCenterY() <= 0 || acorn.get(j).getmyCenterY() >= 800) {
          acorn.remove(j);
        }
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
  } else {
    background(#718EBB);
    for (int s = 0; s < Snowflake.length; s++)
    {
      Snowflake[s].show();
      Snowflake[s].outMove();
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

  if (key == ' ') {
    if (cooldown <= 0)
    {
      acorn.add(new Bullet(Pine));
      shoot = true;
      cooldown = 5;
    }
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
