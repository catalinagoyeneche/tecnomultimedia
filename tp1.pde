// Goyeneche Catalina 91364/8
// tp1


//Variables
PFont fuente1 ;
String f1, f2, f3 ;
PImage fot1, fot2, fot3 ;
int posY;


void setup () {
  size (640, 480) ;
  textAlign (CENTER, CENTER);


  //Asignacion de variables

  fuente1 = loadFont ("Arial-Black-48.vlw");

  f1= "Martillo";
  f2= "El martillo es una herramienta de percusión utilizada para golpear directamente o indirectamente una pieza, causando su desplazamiento" ;
  f3= "El uso más común de esta herramienta suele ser para clavar, calzar partes o romper una pieza.";

  fot1= loadImage ("portada.png");
  fot2= loadImage ("foto2.png");
  fot3= loadImage ("foto3.png");

  posY= 100;

}


void draw () {
  println ( frameCount );
  textFont (fuente1); //VARIABLE FUENTE
  fill (0);
  textAlign (CENTER, CENTER);
  frameRate (1);

  //imagen 1
  if ( frameCount >= 4 ) {
    imageMode (CENTER);
    image (fot1, width/2, height/2, 640, 480);
    textSize (20);
    text (f1, 300, 310);
    textSize (25);
  }

  //imagen 2
  if ( frameCount >= 4 ) {
    image (fot2, width/2, height/2, width, height);
    textSize (20);
    text (f2, 300, 310);
    textSize (25);
  }

  //imagen 3
  if ( frameCount >= 16 ) {
    frameRate (60);
    image(fot3, width/2, height/2, width, height);
    textSize (20);
    text (f3, 300, posY+200);
    posY=1;
  }
}

   // REINICIO 
void keyPressed () {
  if (key == ENTER) {
    frameCount = 0;
  }
}
