// GOYENECHE CATALINA, 91364/8
//VARIABLES
int cant=4;
int canti=3;
int tamx;
int tamy;


void setup () {
  size (800, 600);
  tamx= width/cant ;
  tamy= height/canti;
}


void draw () {
  background(0);
  mas (0, 0, width, height);
  for (int x = 0; x< cant; x ++) {
    for (int y = 0; y<canti; y ++) {
      float a = constrain (mouseX, x*tamx, x*tamx + tamx);
      float b= constrain (mouseY, y*tamy, y*tamy + tamy);
      if (mouseX >=a && mouseY>=b) {
        fill (random (255), random(255), random(255));
      } 
     else{
        fill (0);
      
      }
      rect (x* tamx, y* tamy, tamx, tamy);
    }
  }
}

void mas (float xx, float yy, float an, float al) {
  if (mousePressed&& mouseX>=xx && mouseX<=an &&mouseY>=yy &&mouseY<al) {
    noLoop ();
  }
}

void keyPressed () {
  loop();
}
