PImage fondo1, fondo2, fondo3, fondo4, fondo5, fondo6;
PFont miFuente;
int pantalla = 0;
String textoPantalla = ""; 
int xTexto = 640;
int siguienteCambio = 0;

void setup() {
  size(640, 480);
  fondo1 = loadImage("fondo 1.jpg");
  fondo2 = loadImage("fondo 2.jpg");
  fondo3 = loadImage("fondo 3.jpg");
  fondo4 = loadImage("fondo 4.jpg");
  fondo5 = loadImage("fondo 5.jpg");
  fondo6 = loadImage("fondo 6.jpg");
  textAlign(CENTER, CENTER);
  miFuente = loadFont("CalifornianFB-Bold-20.vlw");
  textFont(miFuente);
  siguienteCambio = frameCount + 300; 
}

void draw() {
  if (pantalla == 0) {
    background(255, 220, 250); 
    fill(50);
    textSize(50);
    text("Juego UNO", width/2, height/2 - 20);
    textSize(20);
    text("Comisión 2, Agesta Sofía", width/2, height/2 + 30);

    if (frameCount >= siguienteCambio) {
      pantalla++;
      siguienteCambio = frameCount + 400;
    }
    
  } else if (pantalla == 1) {
    image(fondo1, 0, 0, width, height);
    textoPantalla = "El encargado de repartir las cartas reparte 7 para cada jugador.";
  } else if (pantalla == 2) {
    image(fondo2, 0, 0, width, height);
    textoPantalla = "El participante que se ubica a la derecha del repartidor empieza a jugar.";
  } else if (pantalla == 3) {
    image(fondo3, 0, 0, width, height);
    textoPantalla = "Los jugadores deben tirar cartas del mismo color y/o tipo, salvo si es negra.";
  } else if (pantalla == 4) {
    image(fondo4, 0, 0, width, height);
    textoPantalla = "Si no tiene una carta válida, debe sacar una del mazo.";
  } else if (pantalla == 5) {
    image(fondo5, 0, 0, width, height);
    textoPantalla = "Si le queda una carta, debe gritar UNO. Si la tira, gana la ronda.";
  } else if (pantalla == 6) {
    image(fondo6, 0, 0, width, height);
    textoPantalla = "Si olvida gritar UNO y el otro juega, debe robar otra carta.";
  } else if (pantalla == 7) {
    background(255, 220, 250); 
    fill(0);
    textSize(60); 
    text("FIN", width / 2, 240);

    fill(200);
    rect(width/2 - 50, 300, 100, 40);
    fill(0);
    textSize(20);
    text("Reiniciar", width/2, 320);
    return;
  }

  if (pantalla >= 1 && pantalla <= 6) {
    fill(255, 182, 193);
    stroke(0);
    strokeWeight(2);
    rect(10, 420, 620, 50); 
    fill(0);
    noStroke();
    textSize(20);
    text(textoPantalla, xTexto, 445);

    if (xTexto > width / 2) {
      xTexto -= 2;
    }

    if (frameCount >= siguienteCambio && xTexto <= width / 2) {
      pantalla++;
      xTexto = 640;
      siguienteCambio = frameCount + 400;
    }
  }
}

void mousePressed() {
  if (pantalla == 7) {
    if (mouseX > width/2 - 50 && mouseX < width/2 + 50 &&
        mouseY > 300 && mouseY < 340) {
      pantalla = 0;
      xTexto = 640;
      siguienteCambio = frameCount + 300;
    }
  }
}
