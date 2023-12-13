class Spaceship extends Floater
{
  public Spaceship() {
    corners = 11;
    xCorners = new int[]{-52, -40, -40, -12, -12, 16, -12, -12, -40, -40, -52};
    yCorners = new int[]{-4, -4, -12, -4, -8, 0, 8, 4, 12, 4, 4};
    myColor = color(20, 95, 84);
    myCenterX = 400;
    myCenterY = 400;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
  }
  
  public double getmyCenterX(){
    return myCenterX;
  }
  public double getmyCenterY(){
    return myCenterY;
  }
  public double getmyXspeed() {
    return myXspeed;
  }
  public double getmyYspeed() {
    return myYspeed;
  }
  public double getmyPointDirection() {
    return myPointDirection;
  }
  public void setmyCenterX(double xCenter)
  {
    myCenterX = xCenter;
  }
  public void setmyCenterY(double yCenter)
  {
    myCenterY = yCenter;
  }
  public void setmyXspeed(double xSpeed)
  {
    myXspeed = xSpeed;
  }
  public void setmyYspeed(double ySpeed)
  {
    myYspeed = ySpeed;
  }
  public void setmyPointDirection(double direction)
  {
    myPointDirection = direction;
  }
}
