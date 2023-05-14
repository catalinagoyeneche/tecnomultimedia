//Goyeneche catalina
//91364/8

color verde = #99B898;
color salmon = #FF847C;
color rojo = #E84A5F;
color negro = #2A363B;
color beige = #FECEAB;
PFont font;

int pantalla = 0;
int contador = 0;
color colorDeFondo = 0;
color colorDeTexto = 200;
PImage imagen1;
PImage imagen2;
PImage imagen3;
float x = 0;
int x1 = 520;
int y = 425;
int w = 40;
int h = 100;
float velocidad = 2;
float direccion = 1;
void setup() {
  size(640, 480);
  font = createFont("Arial-Black-48.vlw", 35);
  textFont (font);
  smooth();
  imagen1 = loadImage("portada.png");
  imagen2 = loadImage("foto2.png");
  imagen3 = loadImage("foto3.jpg");
}

void draw() {
  x+= velocidad * direccion;
  if (x>width || x < 0 ) {
    direccion*= -1;
  }
  println("X;");
  println(mouseX);
  println("Y;");
  println(mouseY);


  noStroke();
  background(negro);

  switch(pantalla) {
  case 0:


    image(imagen1, 50, 50);
    imagen1.resize(500, 400);
    contador++;
    println("Estado 1:", contador);
    if (contador >= 500) {
      contador = 0;
      pantalla = 1;
    }

    fill(0, 255, 255, contador);
    textSize(40);
    text("martillo", 230, 85);

    break;

  case 1:
    image(imagen2, 0, 0);
    imagen2.resize(640, 480);
    contador++;
    println("Estado 2:", contador);
    if (contador >= 800) {
      contador = 0;
      pantalla = 2;
    }
    fill(0, 0, 0);
    textSize(20);
    text("El martillo es una herramienta de percusión utilizada para golpear directamente ", x, x);


    break;


  case 2:
    image(imagen3, 0, 0);
    imagen3.resize(640, 480);
    contador++;
    println("Estado 2:", contador);
    if (contador >= 800) {
      contador = 0;
      pantalla = 2;
    }
    fill(0, 0, 0);
    textSize(20);
    text("El uso más común de esta herramienta suele ser para clavar, calzar partes o romper una pieza", x, x);


    break;


  case 3:


    contador++;
    println("Estado 4:", contador);
    if (contador >= 2000) {
      contador = 0;
      pantalla = 4;
    }
    fill(beige);
    textSize(30);
    text("Apreta el boton para reinciar", 150, 200);
    fill(0, 0, 0);
    textSize(15);
    text("El Boton", 250, 250);
    fill(beige);
    rect(250, 250, 100, 100);
  }
}
void mousePressed() {
  if (mouseX>520 && mouseX<=425 && mouseY>520 && mouseY<=425);
  pantalla = 0;
  contador = 0;
}
