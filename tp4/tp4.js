// Clase Jugador
class Jugador {
  constructor() {
    this.x = width / 2;
    this.y = height - 50;
    this.imagen = loadImage('fantasma.png'); // Cargar la imagen del jugador
    this.tamano = 100; // Tamaño del jugador
  }

  mostrar() {
    image(this.imagen, this.x - this.tamano / 2, this.y - this.tamano / 2, this.tamano, this.tamano);
  }

  mover(izquierda, derecha) {
    if (izquierda) {
      this.x -= 5;
    }
    if (derecha) {
      this.x += 5;
    }
    this.x = constrain(this.x, this.tamano / 2, width - this.tamano / 2);
  }

  golpea(obstaculo) {
    let d = dist(this.x, this.y, obstaculo.x, obstaculo.y);
    return d < this.tamano / 2;
  }
}

// Clase Obstaculo
class Obstaculo {
  constructor() {
    this.x = random(width);
    this.y = 0;
    this.imagen = loadImage('vela.png'); // Cargar la imagen del obstáculo
    this.tamano = 40; // Tamaño del obstáculo
  }

  mostrar() {
    image(this.imagen, this.x - this.tamano / 2, this.y - this.tamano / 2, this.tamano, this.tamano);
  }

  mover() {
    this.y += 5;
  }
}

// Clase Juego
class Juego {
  constructor() {
    this.jugador = new Jugador();
    this.obstaculos = [];
    this.tiempo = 0;
    this.tiempoMaximo = 15;
    this.primerPantalla = true;
    this.fondo = loadImage('casa.jpg'); // Cargar la imagen de fondo
  }

  mostrarPrimerPantalla() {
    image(this.fondo, 0, 0, width, height);
    textSize(20);
    textAlign(CENTER, CENTER);
    text("Para jugar, usa las flechitas y esquiva las velas", width / 2, height / 2 - 30);
    text("Tienes 15 segundos, si te tocan, pierdes", width / 2, height / 2);
    text("Goyeneche Catalina - Com5", width / 2, height / 2 + 30);
    textSize(16);
    text("Presiona cualquier tecla para comenzar, reinicia con la R", width / 2, height / 2 + 60);
  }

  mostrarGanaste() {
    textSize(32);
    textAlign(CENTER, CENTER);
    fill(255);
    text("¡Ganaste!", width / 2, height / 2);
    noLoop();
  }

  mostrarPerdiste() {
    textSize(32);
    textAlign(CENTER, CENTER);
    fill(255);
    text("¡Perdiste!", width / 2, height / 2);
    noLoop();
  }

  generarObstaculo() {
    if (random(1) < 0.03) {
      this.obstaculos.push(new Obstaculo());
    }
  }

  reiniciar() {
    this.jugador = new Jugador();
    this.obstaculos = [];
    this.tiempo = 0;
    loop();
  }

  jugar() {
    if (!this.primerPantalla) {
      image(this.fondo, 0, 0, width, height);

      // Dibuja al jugador
      this.jugador.mostrar();

      // Mueve al jugador
      this.jugador.mover(keyIsDown(LEFT_ARROW), keyIsDown(RIGHT_ARROW));

      if (frameCount % 60 == 0) {
        this.tiempo++;
      }

      if (this.tiempo >= this.tiempoMaximo) {
        this.mostrarGanaste();
      } else {
        // Generar obstáculos aleatoriamente
        this.generarObstaculo();

        for (let i = this.obstaculos.length - 1; i >= 0; i--) {
          this.obstaculos[i].mostrar();
          this.obstaculos[i].mover();

          if (this.jugador.golpea(this.obstaculos[i])) {
            // El jugador perdió
            this.mostrarPerdiste();
          }

          if (this.obstaculos[i].y > height) {
            this.obstaculos.splice(i, 1);
          }
        }
      }
    }
  }
}

let juego;

function preload() {
  loadImage('fantasma.png');
  loadImage('vela.png');
  loadImage('casa.jpg');
}

function setup() {
  createCanvas(600, 600);
  juego = new Juego();
  noLoop();
  juego.mostrarPrimerPantalla();
}

function draw() {
  juego.jugar();
}

function keyPressed() {
  if (juego.primerPantalla) {
    juego.primerPantalla = false;
    loop();
  } else if (key === 'R' || key === 'r') {
    juego.reiniciar();
  }
}
