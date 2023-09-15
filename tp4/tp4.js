//Catalina Goyeneche Com5

let jugadorX;
let jugadorY;
let obstaculos = [];
let tiempo = 0;
let tiempoMaximo = 15;
let primerpantalla = true;

function setup() {
  createCanvas(600, 600);
  jugadorX = width / 2;
  jugadorY = height - 50;
  noLoop();
  mostrarPrimerPantalla();
}

function draw() {
  if (!primerpantalla) {
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

    if (frameCount % 60 == 0) {
      tiempo++;
    }

    if (tiempo >= tiempoMaximo) {

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

      for (let i = obstaculos.length - 1; i >= 0; i--) {
        fill(255, 0, 0);
        rect(obstaculos[i].x, obstaculos[i].y, 20, 20);
        obstaculos[i].y += 5;

        if (JugadorGolpea(obstaculos[i])) {
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
  if (primerpantalla) {
    // Comenzar el juego al presionar cualquier tecla
    primerpantalla = false;
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
  loop();
}

function JugadorGolpea(obstaculo) {
  let d = dist(jugadorX, jugadorY, obstaculo.x, obstaculo.y);
  return d < 20;
}

function mostrarPrimerPantalla() {
  background(220);
  textSize(20);
  textAlign(CENTER, CENTER);
  text("Para jugar, usa las flechitas y esquiva los cuadrados rojos", width / 2, height / 2 - 30);
  text("Tienes 15 segundos, si te tocan, pierdes", width / 2, height / 2);
  text("Goyeneche Catalina - Com5", width / 2, height / 2 + 30);
  textSize(16);
  text("Presiona cualquier tecla para comenzar, reinicia con la R", width / 2, height / 2 + 60);
}
