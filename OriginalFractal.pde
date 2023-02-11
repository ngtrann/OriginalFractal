public void setup()
{
  size(500,500);
  strokeWeight(1);
  rectMode(CENTER);
}

public void draw()
{
  background(0);
  myFractal(250,250,250);
}

public void myFractal(int x, int y, int siz)
{
  fill(255,(mouseX/2)+100);
  ellipse (x, y, siz, siz);
  if(siz > 50)
  {
  stroke(mouseX/2, 0 ,mouseY/2);
  myFractal(x, y, siz/2);
    stroke(0, mouseX/2 ,mouseY/2);
    myFractal(x, y+siz/2, siz/2);
    myFractal(x, y-siz/2, siz/2);
     stroke(mouseX/2, mouseY/2 , 0);
     myFractal(x+siz/2, y, siz/2);
     myFractal(x-siz/2, y, siz/2);
  
    /* myFractal(x+siz/2, y, siz/2);
     myFractal(x-siz/2, y, siz/2);
       myFractal(x+siz/2, y+siz/2, siz/3);
       myFractal(x-siz/2, y+siz/2, siz/3);
         myFractal(x+siz/2, y-siz/2, siz/3);
         myFractal(x-siz/2, y-siz/2, siz/3); */
//if mouse moves, opacity of circle + color changes
  }
}
