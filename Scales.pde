void setup() {
  size(500, 500);  //feel free to change the size
  noLoop(); //stops the draw() function from repeating
}
void draw() {
  background(255,255,255);
  boolean shift = true;
  for(int yc=-25; yc<=550; yc=yc+25)
    {
      for(int xc=0; xc<=550; xc=xc+50)
      {
        if(shift == true)
          penguin(xc-25, yc);
        else
          penguin(xc, yc);
      }
      if(shift == true)
        shift = false;
      else
        shift = true;
    }
}
void penguin(int x, int y) {
  fill(0,0,0);
  bezier(x+0,y+50,x+0,y+0,x+50,y+0,x+50,y+50);
  fill(255,255,255);
  beginShape();
  curveVertex(x+5,y+50);
  curveVertex(x+5,y+50);
  curveVertex(x+15,y+25);
  curveVertex(x+25,y+45);
  curveVertex(x+35,y+25);
  curveVertex(x+45,y+50);
  curveVertex(x+45,y+50);
  endShape();
  fill(0,0,0);
  ellipse(x+15,y+40,5,2);
  ellipse(x+35,y+40,5,2);
  fill(255,100,80);
  ellipse(x+25,y+45,10,5);
}
