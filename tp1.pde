// Goyeneche Catalina 91364/8
// tp1


//VARIABLES
PFont fuente1; 
String d1, d2, produce, produce1, ej, ej1, act, act1;
PImage cred1, cred2, cred3, cred4, cred5, cred6;
int posY;


void setup () {
  size (600, 400);
  textAlign (CENTER, CENTER);


  // ASIGNACION DE VARIABLES

  fuente1 = loadFont ("FranklinGothic-Demi-48.vlw");

  d1= "DIRECCION"; 
  d2= "MARCOS CARNEVALE" ;
  produce = "PRODUCTOR";
  produce1 = "MARTIN KWELLER";
  ej = "CO PRODUCTOR";
  ej1 = "AXEL KUSCHEVATZKY";
  act= "ACTORES";
  act1= "GUILLERMO FRANCELLA  \n PETO MENAHEM  \n ROMINA FERNANDES  \n MARTIN SEEFELD \n VIVIANA ZACCONE \n LAURITA FERNANDEZ \n NICOLAS SCARPINO ";

  cred1= loadImage ("portada.png"); 
  cred2 = loadImage ("cred2.png");
  cred3 = loadImage ("cred3.png");
  cred4 = loadImage ("cred4.png");
  cred5 = loadImage ("cred5.png");
  cred6 = loadImage ("cred6.png");

  posY= 100;
}


void draw() {
  println ( frameCount );
  textFont (fuente1); //VARIABLE FUENTE
  fill (0); 
  textAlign (CENTER, CENTER);
  frameRate (1);

  // PORTADA DE LA PELICULA, PANTALLA 1
  //background (0); 
  imageMode (CENTER);
  image (cred1, width/2, height/2, 600, 400);


  //pantalla 2 direccion 
  if ( frameCount >= 4 ) {
    image (cred2, width/2, height/2, width, height);
    textSize (20);
    text (d1, 300, 310);
    textSize (25);
    text (d2, 300, 330);
  }

  //PANTALLA 3 PRODUCTORES
  if ( frameCount >= 8) {
    image (cred3, width/2, height/2, width, height);
    textSize (20);
    text (produce, 300, 310);
    textSize (25);
    text (produce1, 300, 330);
  }
  
  //PANTALLA 4 COPRODUCTOR
   if ( frameCount >= 12 ) {
    image (cred4, width/2, height/2, width, height);
    textSize (20);
    text (ej, 100, 50);
    textSize (25);
    text (ej1, 130, 70);
   }
   
   //PANTALLA 5 ACTORES
   if ( frameCount >= 16 ) {
     frameRate (60);
     image(cred5, width/2, height/2, width, height);
      textSize (20);
   text (act,300, posY+200);
    text (act1, 300, posY+300);
    posY -= 1;
  }
}
    
     // REINICIO 
void keyPressed () {
  if (key == ENTER) {
    frameCount = 0;
  }
}
