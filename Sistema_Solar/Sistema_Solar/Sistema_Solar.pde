ObjetoAstronomico sol, tierra, luna, mercurio, venus, marte, jupiter, fobos, deimos;

PImage fondo;

float radioSol = 50;
float radioTierra =  12.756;
float radioMarte = 6.794;


void setup() {
  
  size(1000, 700, P3D);
  noStroke();
  
  
  fondo = loadImage("espacio_exterior.jpg");
  
  sol = new ObjetoAstronomico(0, radioSol, 0, 0.1, loadImage("sol.png"), "Sol");
  
  luna = new ObjetoAstronomico(radioTierra + 3,   3, 0.1417, 1, loadImage("luna.jpg"), "");
  
  fobos = new ObjetoAstronomico(radioMarte + 9.377, 3, 0.07, 1, loadImage("fobos.png"), "");
  deimos = new ObjetoAstronomico(radioMarte + 23.46, 3, 0.05, 1, loadImage("deimos.png"), "");
  
  mercurio = new ObjetoAstronomico(radioSol + 57.91, 4.88, 0.05, 1, loadImage("mercurio.jpg"), "Mercurio");
  venus = new ObjetoAstronomico(radioSol + 108.2, 12.104, 0.025, 1, loadImage("venus.jpg"), "Venus");
  tierra = new ObjetoAstronomico(radioSol + 149.6, radioTierra, 0.01, 1, loadImage("tierra.jpg"), "Tierra");
  marte = new ObjetoAstronomico(radioSol + 227.94, radioMarte, 0.00639, 1, loadImage("marte.jpg"), "Marte");
  jupiter = new ObjetoAstronomico(radioSol + 508.33, 25, 0.000152, 0.5, loadImage("jupiter.jpg"), "Júpiter");
  
  
  sol.addOrbitante(mercurio);
  sol.addOrbitante(venus);
  sol.addOrbitante(tierra);
  sol.addOrbitante(marte);
  sol.addOrbitante(jupiter);
  
  tierra.addOrbitante(luna);
  
  marte.addOrbitante(deimos);
  marte.addOrbitante(fobos);
}

void draw() {
  fondo.resize(width, height);
  background(fondo);
  // Situamos los objetos en el centro
  translate(width/2, height/2);
  
  // Inclinamos ligeramente para ver mejor los objetos
  rotateX(radians(-45));
  scale(1.5);
  
  sol.muestra();

}
