// https://youtu.be/COKErP4kFgk
//

PImage imagenElegida;
boolean modoInteractivo = false;
int cantidadColumnas = 10;
int cantidadFilas = 10;
float espacioEntreCirculos = 40;

void setup() {
  size(800, 400);
  imagenElegida = loadImage("F_37.jpg");
}

void draw() {
  background(255);
  image(imagenElegida, 0, 0, 400, 400);
  for (int columna = 0; columna < cantidadColumnas; columna++) {
    for (int fila = 0; fila < cantidadFilas; fila++) {
      float x = 400 + columna * espacioEntreCirculos + espacioEntreCirculos / 2;
      float y = fila * espacioEntreCirculos + espacioEntreCirculos / 2;

      float grosor = calcularGrosor(x, y, columna, fila);
      dibujarCirculo(x, y, espacioEntreCirculos * 0.9, grosor);
    }
  }
}

float calcularGrosor(float x, float y, int columna, int fila) {
  float grosor;
  if (modoInteractivo) {
    float distancia = dist(mouseX, mouseY, x, y);
    grosor = map(distancia, 0, width / 2, espacioEntreCirculos * 0.4, 5);
    if (grosor < 5) {
      grosor = 5;
    }
    if (grosor > espacioEntreCirculos * 0.4) {
      grosor = espacioEntreCirculos * 0.4;
    }
  } else {
    grosor = map(columna + fila, 0, cantidadColumnas + cantidadFilas - 2, 5, espacioEntreCirculos * 0.4);
  }
  return grosor;
}

void dibujarCirculo(float x, float y, float diametroExterior, float grosor) {
  noStroke();
  fill(0);
  ellipse(x, y, diametroExterior, diametroExterior);
  fill(255);
  ellipse(x, y, diametroExterior - grosor, diametroExterior - grosor);
}

void keyPressed() {
  if (key == 'm' || key == 'M') {
    modoInteractivo = true;
  }
  if (key == 'r' || key == 'R') {
    modoInteractivo = false;
  }
}
