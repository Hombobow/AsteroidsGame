class Bullet extends Floater
{
  public Bullet(Spaceship theShip) {
    corners = 13;
    xCorners = new int[]{-10,-5,-5,-2,-2,7,10,7,-2,-2,-5,-5,-10};
    yCorners = new int[]{-5,-5,-15,-15,-10,-10,0,10,10,15,15,5,5};
    myColor = color(126, 94, 82);
    myCenterX = theShip.getmyCenterX();
    myCenterY = theShip.getmyCenterY();
    myXspeed = theShip.getmyXspeed();
    myYspeed = theShip.getmyYspeed();
    myPointDirection = theShip.getmyPointDirection();
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
}
