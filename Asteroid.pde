class Asteroid extends Floater
{
  private double rotSpeed;
  private double speed;

  public Asteroid() {
    corners = 4;
    xCorners = new int[]{10, 0, -10, 0};
    yCorners = new int[]{0, 10, 0, -10};
    myColor = color(140, 21, 21);
    myCenterX = (int)(Math.random() * 781) + 10;
    myCenterY = (int)(Math.random() * 781) + 10;
    rotSpeed = Math.random() * 10;
    speed = Math.random() * 3;
    myXspeed = Math.cos(rotSpeed) * speed;
    myYspeed = Math.sin(rotSpeed) * speed;
    myPointDirection = 0;
  }

  public void move() {
    super.turn(rotSpeed);
    
    myCenterX += myXspeed;
    myCenterY += myYspeed;
    
    if (myCenterX > width)
    {
      myCenterX = 0;
    } else if (myCenterX < 0)
    {
      myCenterX = width;
    }
    if (myCenterY > height)
    {
      myCenterY = 0;
    } else if (myCenterY < 0)
    {
      myCenterY = height;
    }
  }
}
