//Catalina Goyeneche Com5


let jugadorX;
let jugadorY;
let obstaculos = [];
let tiempo = 0;
let tiempoMaximo = 15; 
let pantallaDePresentacion = true;

function setup() {
  createCanvas(400, 400);
  jugadorX = width / 2;
  jugadorY = height - 50;
  noLoop(); // Iniciar sin el loop de dibujo
  mostrarPantallaDePresentacion();
}

function draw() {
  if (!pantallaDePresentacion) {
    background(220);

    // Dibuja al jugador
    fill(182, 149, 192);
    ellipse(jugadorX, jugadorY, 20, 20);

    // Mueve al jugador
    if (keyIsDown(LEFT_ARROW)) {
      jugadorX -= 5;
    }
    if (keyIsDown(RIGHT_ARROW)) {
      jugadorX += 5;
    }
    jugadorX = constrain(jugadorX, 10, width - 10);

    // Actualiza el tiempo
    if (frameCount % 60 == 0) {
      tiempo++;
    }

    if (tiempo >= tiempoMaximo) {
      // El jugador ganó
      textSize(32);
      textAlign(CENTER, CENTER);
      text("¡Ganaste!", width / 2, height / 2);
      noLoop();
    } else {
      // Generar obstáculos aleatoriamente
      if (random(1) < 0.03) {
        obstaculos.push({
          x: random(width),
          y: 0
        });
      }

      // Mover y mostrar obstáculos
      for (let i = obstaculos.length - 1; i >= 0; i--) {
        fill(255, 0, 0);
        rect(obstaculos[i].x, obstaculos[i].y, 20, 20);
        obstaculos[i].y += 5;

        if (jugadorColisiona(obstaculos[i])) {
          // El jugador perdió
          textSize(32);
          textAlign(CENTER, CENTER);
          text("¡Perdiste!", width / 2, height / 2);
          noLoop();
        }
        if (obstaculos[i].y > height) {
          obstaculos.splice(i, 1);
        }
      }
    }
  }
}

function keyPressed() {
  if (pantallaDePresentacion) {
    // Comenzar el juego al presionar cualquier tecla
    pantallaDePresentacion = false;
    loop(); 
  } else if (key === 'R' || key === 'r') {
    reiniciarJuego();
  }
}

function reiniciarJuego() {
  jugadorX = width / 2;
  jugadorY = height - 50;
  obstaculos = [];
  tiempo = 0;
  loop(); // Reiniciar el loop de dibujo
}

function jugadorColisiona(obstaculo) {
  let d = dist(jugadorX, jugadorY, obstaculo.x, obstaculo.y);
  return d < 20;
}

function mostrarPantallaDePresentacion() {
  background(220);
  textSize(20);
  textAlign(CENTER, CENTER);
  text("Para jugar, usa las flechitas y esquiva los cuadrados", width / 2, height / 2 - 30);
  text("Tienes 15 segundos, si te tocan, pierdes", width / 2, height / 2);
  text("Goyeneche Catalina - Com5", width / 2, height / 2 + 30);
  textSize(16);
  text("Presiona cualquier tecla para comenzar", width / 2, height / 2 + 60);
}
