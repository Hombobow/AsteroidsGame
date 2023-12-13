class Asteroid extends Floater
{
  private double rotSpeed;
  private double speed;
  private int scale;

  public Asteroid() {
    corners = 14;
    scale =  (int)(Math.random() * 3) + 2;
    xCorners = new int[]{0, 2, 4, 4, 2, -4, -6, -6, -7, -7, -1, -1, -2, -2};
    yCorners = new int[]{0, 2, 2, -2, -4, -4, -2, 7, 7,  10, 10, 7, 7, 0};
    myColor = color(140, 21, 21);
    myCenterX = (int)(Math.random() * 781) + 10;
    myCenterY = (int)(Math.random() * 781) + 10;
    rotSpeed = Math.random() * 5;
    speed = Math.random() * 2;
    myXspeed = Math.cos(rotSpeed) * speed;
    myYspeed = Math.sin(rotSpeed) * speed;
    myPointDirection = 0;
  }

  public void show ()  //Draws the floater at the current position
  {
    fill(myColor);
    stroke(myColor);

    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()
    float dRadians = (float)(myPointDirection*(Math.PI/180));

    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);

    //draw the polygon
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI] * scale, yCorners[nI] * -scale);
    }
    endShape(CLOSE);

    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
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
  
  public double getmyCenterX(){
    return myCenterX;
  }
  
  public double getmyCenterY(){
    return myCenterY;
  }
  
  public int getscale(){
    return scale;
  }
}
