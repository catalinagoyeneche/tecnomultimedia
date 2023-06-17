//Goyeneche Catalina
//91364/8
// https://youtu.be/5dK43JgCeVk
int tam;
PImage image;
color c;

void setup() {
  size(800, 400);
  tam = 55;
  image = loadImage("tecno.png");
  c = color(random(255), random(255), random(255));
  fill(c);

  int miValor = valor();
  println("El valor obtenido es: " + miValor);

  if (miValor > 50) {
    println("El valor es mayor que 50.");
  } else {
    println("El valor es menor o igual que 50.");
  }
}

void draw() {
  background(c);
  image(image, 0, 0, 400, 400);

  for (int x = 7; x < 14; x++) {  // Se ejecuta en la mitad derecha
    for (int y = 0; y < 8; y++) {
      int posx = x * (tam + 3);
      int posy = y * (tam + 3);
      fill(0);
      rect(posx + 2, posy + 2, tam - 4, tam - 4, 15);
    }
  }
}

void mousePressed() {
  setup();
}

void keyPressed() {
  background(255);
}

int valor() {
  int valor = 40;
  return valor;
}
