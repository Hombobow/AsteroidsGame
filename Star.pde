class Star //note that this class does NOT extend Floater
{
  //myX, myY = center 
  //myD = diagonal x and y length
  //mySpeed = gravity
  private int myX, myY, myD, mySpeed; 
  public Star()
  {
    myX = (int)(Math.random() * 781) + 10;
    myY = (int)(Math.random() * 781) + 10;
    myD = (int)(10/sqrt(2));
    mySpeed = 1;
    
  }
  
  public void move()
  {
    myY += mySpeed;
    if(myY > 800)
    {
      myY = 0;
    }
  }
  
  public void show()
  {
    stroke(255);
    //line up to down
    beginShape();
    vertex(myX, myY - 10);
    vertex(myX, myY + 10);
    endShape(CLOSE);
    //line left to right
    beginShape();
    vertex(myX - 10, myY);
    vertex(myX + 10, myY);
    endShape(CLOSE);
    
    //line diagonal left up
    beginShape();
    vertex(myX - myD, myY + myD);
    vertex(myX + myD, myY - myD);
    endShape(CLOSE);
    //line diagonal left down
    beginShape();
    vertex(myX - myD, myY - myD);
    vertex(myX + myD, myY + myD);
    endShape(CLOSE);
    
    //up hook
    beginShape();
    vertex(myX - 3, myY - 10);
    vertex(myX, myY - 6);
    vertex(myX + 3, myY - 10);
    vertex(myX, myY - 6);
    endShape(CLOSE);
    //down hook
    beginShape();
    vertex(myX - 3, myY + 10);
    vertex(myX, myY + 6);
    vertex(myX + 3, myY + 10);
    vertex(myX, myY + 6);
    endShape(CLOSE);
    
    //left hook
    beginShape();
    vertex(myX - 10, myY + 3);
    vertex(myX - 6, myY);
    vertex(myX - 10, myY - 3);
    vertex(myX - 6, myY);
    endShape(CLOSE);
    //right hook
    beginShape();
    vertex(myX + 10, myY + 3);
    vertex(myX + 6, myY);
    vertex(myX + 10, myY - 3);
    vertex(myX + 6, myY);
    endShape(CLOSE);
  }
}
