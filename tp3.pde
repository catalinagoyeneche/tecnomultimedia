//Goyeneche Catalina 91364/8

int estado = 0;
int c = 18;
PImage[] fantasma = new PImage[c];
String[] palabras= {
  "El fantasma de Canterville",
  "Cuando termines de leer, reiniciar con la x",
  "Un fantasma atormentado, provoca miedo en la mansión de Canterville",
  "La llegada de la familia Otis, pragmáticos y poco impresionables, desafía la naturaleza sobrenatural del fantasma",
  "Los Otis responden con audacia y humor a los intentos del fantasma de asustarlos, frustrando sus esfuerzos.",
  "El fantasma experimenta una mezcla de rabia y humillación ante la indiferencia de los Otis.",
  "Sin embargo, la persistente bondad y compasión de Virginia comienzan a ablandar el corazón del fantasma",
  "Debe tomar una decision :",
  "El fantasma conmovido por la actitud de Virginia, revela su oscuro secreto oculto ",
  "El fantasma se enfada con el resto de la familia menos con virginia",
  "Virginia, con comprensión y empatía, escucha atentamente la historia del fantasma y lo perdona por sus acciones pasadas",
  "Aunque el fantasma se enfada con los Otis, siente una extraña conexión con Virginia, una sensación de nostalgia y ternura que no puede ignorar.",
  "Guiada por su nobleza, Virginia propone una solución que podría dar al fantasma la oportunidad de encontrar la paz que tanto anhela",
  "Mientras intenta asustar a los demás miembros de la familia, el fantasma trata a Virginia con una mezcla de cuidado y resentimiento",
  "Mientras el rito se lleva a cabo, una luz brillante y cálida envuelve al fantasma, disipando su apariencia espectral y liberándolo de su atormentado destino.",
  "Gracias a su encuentro con Virginia, el fantasma de Canterville finalmente encuentra la paz y se libera de su tormento eterno ",
  "El fantasma, encerrado en su propio resentimiento, lucha por aceptar la bondad de Virginia y su deseo de ayudarlo a encontrar la paz.- FIN 1 -",
  "El fantasma, ignora todo lo charlado con virginia y persiste en asustar a los otis",
  "Nuevamente deben elegir:",
  "En un momento de vulnerabilidad, el fantasma revela a Virginia el verdadero origen de su tormento, esperando que ella lo comprenda y lo perdone",
  "La determinación de Virginia provoca una lucha interna en el fantasma, quien se debate entre su deseo de aterrar a los Otis y su anhelo de liberarse de su eterno tormento.",
  "El fantasma de Canterville, gracias a la valentía y sabiduría de Virginia, abandona la mansión para emprender un nuevo camino hacia la paz, dejando atrás  un legado de transformación y aprendizaje para todos aquellos que conocieron su historia",
  "Fin 3"
};

void setup() {
  size(600, 600);


  for (int i = 0; i < c; i++) {
    fantasma[i] = loadImage("fantasma" + i + ".jpg");
  }

  textSize(20);
  textAlign(CENTER, CENTER);
  imageMode(CENTER);
}

void draw() {
  switch (estado) {
  case 0:
    image(fantasma[0], width/2, height/2, 600, 600);
    fill(0);
    rect(175, 10, 250, 80);
    fill(255);
    text(palabras[0], 175, 10, 250, 80);
    fill(255);
    rect(0, 290, 250, 100);
    fill(0);
    text(palabras[1], 0, 290, 250, 100);
    boton(480, 480, 100, 60);
    break;
  case 1:
    image(fantasma[1], width/2, height/2, 600, 600);
    fill(255);
    rect(30, 30, 540, 60);
    fill(0);
    text(palabras[2], 10, 10, 580, 100);
    boton(480, 480, 100, 60);
    break;
  case 2:
    image(fantasma[2], width/2, height/2, 600, 600);
    fill(255);
    rect(10, 10, 580, 80);
    fill(0);
    text(palabras[3], 10, 10, 580, 80);
    fill(0);
    rect(100, 400, 400, 100); //abajo
    fill(255);
    text(palabras[4], 100, 400, 400, 100);
    boton(480, 480, 100, 60);
    break;
  case 3:
    image(fantasma[4], width/2, height/2, 600, 600);
    fill(255);
    rect(20, 510, 400, 70);
    fill(0);
    text(palabras[5], 20, 500, 400, 80);
    boton(480, 480, 100, 60);
    break;
  case 4:
    image(fantasma[3], width/2, height/2, 600, 600);
    fill(255, 255, 255);
    rect(10, 10, 580, 80);
    fill(0);
    text(palabras[6], 10, 10, 580, 80);
    fill(255);
    rect(80, 415, 240, 30);
    rect(250, 260, 500, 70);
    rect(200, 490, 250, 100);
    fill(0);
    text(palabras[7], 200, 425);
    fill(0);
    text(palabras[8], 250, 250, 350, 70);
    text(palabras[9], 200, 490, 250, 100);
    boton(490, 375, 70, 40);
    boton(490, 475, 70, 40);
    break;
  case 5:
    image(fantasma[5], width/2, height/2, 600, 600);
    fill(255);
    // text(, 250, 530);
    boton(480, 480, 100, 60);
    break;

  case 6:

    image(fantasma[6], width/2, height/2, 600, 600);
    fill(255);
    rect(10, 10, 580, 80);
    fill(0);
    text(palabras[10], 50, 10, 500, 80);
    boton(480, 480, 100, 60);
    break;
  case 7:
    image(fantasma[7], width/2, height/2, 600, 600);
    fill(255);
    rect(10, 5, 580, 150);
    fill(0);
    text(palabras[11], 10, 5, 580, 150);
    boton(480, 480, 100, 60);
    break;
  case 8:
    image(fantasma[8], width/2, height/2, 600, 600);
    fill(255);
    rect(10, 10, 580, 80);
    fill(0);
    text(palabras[12], 10, 10, 580, 80);
    boton(480, 480, 100, 60);
    break;
  case 9:
    image(fantasma[4], width/2, height/2, 600, 600);
    textAlign(CENTER);
    fill(255);
    rect(10, 10, 580, 90);
    fill(0);
    text(palabras[13], 10, 10, 580, 100);
    boton(480, 480, 100, 60);
    break;
  case 10:
    image(fantasma[10], width/2, height/2, 600, 600);
    fill(0, 0, 255);
    rect(10, 400, 580, 120);
    fill(255);
    text(palabras[14], 10, 400, 580, 120);
    boton(480, 480, 100, 60);
    break;
  case 11:
    image(fantasma[16], width/2, height/2, 600, 600);
    fill(255);
    rect(10, 10, 580, 80);
    fill(0);
    text(palabras[15], 10, 10, 580, 80);
    rect(10, 100, 580, 80);
    fill(255);
    text(palabras[16], 10, 100, 580, 80);
    break;
  case 12:
    image(fantasma[12], width/2, height/2, 600, 600);
    fill(0);
    rect(10, 10, 580, 80);
    rect(120, 470, 380, 80);
    rect(10, 260, 400, 200);
    fill(255);
    text(palabras[17], 10, 10, 580, 80);
    text(palabras[18], 10, 470, 580, 80);
    text(palabras[19], 10, 260, 400, 200);
    boton(550, 90, 70, 40);
    boton(550, 510, 70, 40);
    break;
  case 13:
    image(fantasma[13], width/2, height/2, 600, 600);
    rect(30, 200, 540, 120);
    fill(0);
    text(palabras[20], 30, 200, 540, 120);
    boton(480, 480, 100, 60);
    break;
  case 14:
    image(fantasma[11], width/2, height/2, 600, 600);
    fill(255);
    rect(10, 10, 580, 150);
    fill(0);
    text(palabras[21], 10, 10, 580, 150);
    fill(255);
    rect(490, 400, 70, 40);
    fill(0);
    text(palabras[22], 490, 400, 70, 40);
    break;
  case 15:
    image(fantasma[15], width/2, height/2, 600, 600);
    fill(255);
    rect(10, 10, 580, 180);
    fill(0);
    text(palabras[20], 10, 10, 580, 180);
    rect(490, 400, 70, 40);
    fill(0);

    break;
  }
}

void mousePressed() {
  switch (estado) {
  case 0:
    if (zonadelrect(530, 530, 100)) {
      estado = 1;
    }
    break;
  case 1:
    if (zonadelrect(530, 530, 100)) {
      estado = 2;
    }
    break;
  case 2:
    if (zonadelrect(530, 530, 100)) {
      estado = 3;
    }
    break;
  case 3:
    if (zonadelrect(490, 375, 70)) {
      estado = 5;
    } else if (zonadelrect(490, 475, 70)) {
      estado = 4;
    }
    break;
  case 4:

    if (zonadelrect(490, 375, 70)) {
      estado = 7;
    } else if (zonadelrect(490, 475, 70)) {
      estado = 8;
    }
    break;

  case 5:
    if (zonadelrect(530, 530, 100)) {
      estado = 7;
    }
    break;
  case 6:
    if (zonadelrect(530, 530, 100)) {
      estado = 8;
    }
    break;
  case 7:
    if (zonadelrect(530, 530, 100)) {
      estado = 9;
    }
    break;
  case 8:
    if (zonadelrect(530, 530, 100)) {
      estado = 10;
    }
    break;
  case 9:
    if (zonadelrect(530, 530, 100)) {
      estado = 11;
    }
    break;
  case 10:
    if (zonadelrect(530, 530, 100)) {
      estado = 12;
    }
    break;
  case 11:
    if (zonadelrect(530, 530, 100)) {
      estado = 11;
    }
    break;
  case 12:
    if (zonadelrect(550, 90, 70)) {
      estado = 13;
    } else if (zonadelrect(550, 510, 70)) {
      estado = 14;
    }
    break;
  case 13:
    if (zonadelrect(480, 480, 100)) {
      estado = 15;
    }
    break;
  case 14:
    if (zonadelrect(490, 375, 70)) {
      estado = 15;
    } else if (zonadelrect(490, 475, 70)) {
      estado = 16;
    }
    break;
  case 15:
    if (zonadelrect(480, 480, 100)) {
      estado = 17;
    }
    break;
  }
}
