int randSize;
int randRed;
int randGreen;
int randBlue;
public void setup()
{
  size (500, 500);
  //background(143, 162, 211);
  background(#AABFC6);
}
public void draw()
{
  randSize = (int)(Math.random()*100+100);
  randRed = (int)(Math.random()*137+95);
  randGreen = (int)(Math.random()*137+97);
  randBlue = (int)(Math.random()*137+97);
}
public void mouseClicked()//optional
{
  stroke(randRed, randGreen, randBlue);
  sierpinski(mouseX, mouseY, randSize);
}
public void sierpinski(int x, int y, int len) 
{
  if (len <= 10) {
    noFill();
    triangle(x, y, x + (len/2), y - len, x + len, y);
  }
  else 
  {
   sierpinski(x, y, len/2);
   sierpinski(x + len/2, y, len/2);
   sierpinski(x + len/4, y - len/2, len/2);
  }
}