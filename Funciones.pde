boolean zonadelrect(int x, int y, int r) {
  return dist(mouseX, mouseY, x, y) <= r;
}

void boton(int x, int y, int btnWidth, int btnHeight) {
  //noStroke();

  if (mouseX >= x && mouseX <= x + btnWidth && mouseY >= y && mouseY <= y + btnHeight) {
    fill(255); 
  } else {
    fill(255); 
  }

  rect(x, y, btnWidth, btnHeight);

// flechita
  fill(255,100,255);
  float arrowSize = min(btnWidth, btnHeight) * 0.8; //tam
  float arrowX = x + btnWidth / 2;
  float arrowY = y + btnHeight / 2;

  triangle(arrowX - arrowSize / 2, arrowY - arrowSize / 4, // vert sup izq
           arrowX - arrowSize / 2, arrowY + arrowSize / 4, // vert inf izq
           arrowX + arrowSize / 2, arrowY); // vert der
           //ubicacion
}


void cambiar(int estado1, int x, int y, int d, int estado2) {
  if (estado == estado1 && zonadelrect(x, y, d)) {
    estado = estado2;
  }
}

void reiniciar() {
  estado = 0;
}
//boton reinicio
void keyPressed() {
  if (key == 'x' || key == 'x') {
    reiniciar();
  }
}
