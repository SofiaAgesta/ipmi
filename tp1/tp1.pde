PImage perro;

void setup() {
  size(800,400);
  perro = loadImage ("mi_perro.png");
  image(perro, 0, 0, 400, 400);
}
  
  void draw() {
  //Cuerpo
  fill(139, 69, 19); 
  ellipse(600, 260, 120, 100);
  stroke(255);
  fill(255); 
  ellipse(600, 273, 50, 75);
  ellipse(600, 230, 15, 30);
  stroke(0);
  
  //Cabeza
  fill(139, 69, 19); 
  ellipse(600, 170, 100, 90);
  
  //Oreja derecha
  fill(80, 40, 20);
  ellipse(652, 160, 33, 60);
  
  //Oreja izquierda
  fill(80, 40, 20);
  ellipse(548, 160, 33, 60);
  
  //Ojo derecho
  fill(0);
  ellipse(617, 163, 9, 9);
  
  //Ojo izquierdo
  fill(0);
  ellipse(582, 163, 9, 9);
  
  //Hocico
  fill(80, 40, 20);
  ellipse(600, 190, 43, 30);
  
  //Nariz
  fill(0);
  ellipse(600, 180, 9, 9);
  stroke(0);
  strokeWeight(2);
  line(600, 180, 600, 188);
  line(600, 188, 592, 195);
  line(600, 188, 608, 195);
  
  //Pata derecha
  fill(139, 69, 19);
  ellipse(628, 278, 33, 82);
  ellipse(658, 298, 24, 35);
  
  //Pata izquierda
  fill(139, 69, 19);
  ellipse(575, 278, 33, 82);  
  ellipse(544, 298, 24, 35);
  
}
  
  
  
 
  
