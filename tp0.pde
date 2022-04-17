//BUGIOLACHI, JOSE
//TP0 FIGURAS
// GOYENECHE CATALINA
void setup ()
{
  size (500, 500);
  background (255, 192, 203);
  strokeWeight (5);
  stroke (0, 0, 0);
}


void draw ()
{
  println ("eje x "  +  mouseX);
  fill(#2a6b22); 
  circle(290, 500, 400);
  fill (128, 64, 0);
  rect(425, 200, 100, 100);
  rect(525, 200, 100, 100);
  fill(#D31702); 
  triangle(425, 200, 475, 125, 525, 200);
  quad(475, 125, 587, 125, 625, 200, 525, 200);
  fill(#D2E1F2); 
  fill (#2a6b22);
  rect(0, 300, 700, 600);
  fill(128, 64, 0); //color tronco
  rect(275, 175, 25, 125);
  fill(#2a6b22); //color copa del arbol
  triangle(250, 175, 287, 100, 325, 175);
  fill (255, 255, 0) ; // color sol 
  circle(78, 100, 100);
  fill (0,0,0); 
 rect (450, 220, 50,75);
 fill (#298cf0);
  rect (50, 390, 100,100); //agua
  rect (90,300,25, 90);
}
