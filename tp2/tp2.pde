PImage play_n;
PImage play_h;
PImage play_c;
PImage reinicio_n;
PImage reinicio_h;
PImage reinicio_c;

PImage nichijou_logo;
PImage decorativo;
PImage hojas;
PImage yuuko;
PImage mio;
PImage mai;
PImage nano;
PImage hakase;
PImage sakamoto;

PImage pantalla6;
PImage pantalla7;
PImage pantalla8;
PImage hakase_lol;
PImage nano_lol;
PImage nichijou_logo_2;
PImage img_final;

boolean transicionInicio = false;
boolean transicionReinicio = false;

int pantalla = 0;
int tiempo = 0;
float tiempoPantalla = 8500;
float alpha = 0;
float alphat = 0;
float alphap = 255;

int opacidadPersonaje, opacidadPersonaje2 = 0;
int opacidadTextos, opacidadTextos2 = 0;
int opacidadFondo = 0;

float velocidad = 5;
float velHojas = 0.5;
float posX, posX2 = -180;
float posY, posY2 = 35;
float decorativoX = 0;
float hojasX1 = 0;
float hojasX2;

PFont titulos;
PFont titulos2;
PFont texto;

void setup(){
size(640, 480);

play_n = loadImage("play_n.png");
play_h = loadImage("play_h.png");
play_c = loadImage("play_c.png");
reinicio_n = loadImage("reinicio_n.png");
reinicio_h = loadImage("reinicio_h.png");
reinicio_c = loadImage("reinicio_c.png");

nichijou_logo = loadImage("nichijou_logo.png");
decorativo = loadImage("decorativo.png");
hojas = loadImage("hojas.png");
yuuko = loadImage("yuuko.png");
mio = loadImage("mio.png");
mai = loadImage("mai.png");
nano = loadImage("nano.png");
hakase = loadImage("hakase.png");
sakamoto = loadImage("sakamoto.png");

hojasX2 = width;

titulos = loadFont("Warownia-40.vlw");
titulos2 = loadFont("Warownia-32.vlw");
texto = loadFont("ArialMT-18.vlw");

pantalla6 = loadImage("pantalla6.jpg");
pantalla7 = loadImage("pantalla7.png");
pantalla8 = loadImage("pantalla8.png");
hakase_lol = loadImage("hakase_lol.png");
nano_lol = loadImage("nano_lol.png");
nichijou_logo_2 = loadImage("nichijou_logo_2.png");
img_final = loadImage("img_final.png");

}

void draw(){
// Inicio
background(255);
if(pantalla == 0){
tint(255, 255);
image(nichijou_logo, 65, 115, 250, 250);

// Botón inicio
noStroke();
fill(240);
ellipse(460, 240, 118, 118);
image(play_n, 460-55, 240-55, 110, 110);
if(dist(mouseX, mouseY, 460, 240) < 55){
  if(mousePressed){
    image(play_c, 460-55, 240-55, 110, 110);
    } else {
    image(play_h, 460-55, 240-55, 110, 110);
    }
}
} else {
if(pantalla > 1){
fill(255);
  rect(0, 0, width, height);
}
}

progresoPantallas();

// Botón reinicio
if(pantalla == 10){
image(reinicio_n, 120-55, 330-55, 110, 110);
  if(dist(mouseX, mouseY, 120, 330) < 55){
    if(mousePressed){
      image(reinicio_c, 120-55, 330-55, 110, 110);
      } else {
      image(reinicio_h, 120-55, 330-55, 110, 110);
      }
    }
} else {
}

// Transición entre pantallas

transicionEntrePantallas();

if(transicionInicio == true){
alphat += velocidad;
fill(255, alphat);
rect(0, 0, width, height);
  if(alphat >= 255){
  pantalla = 1;
  tiempo = millis();
  alphat = 0;
  transicionInicio = false;
  }
}

}

void mouseClicked(){
if(dist(mouseX, mouseY, 460, 240) < 55 && pantalla == 0){
   transicionInicio = true;
   }
if(dist(mouseX, mouseY, 120, 330) < 55 && pantalla == 10){
   transicionReinicio = true;
  }
}

void resetearVariables(){
alpha = 0;
alphap = 255;
opacidadPersonaje = 0;
opacidadPersonaje2 = 0;
opacidadTextos = 0;
opacidadTextos2 = 0;
opacidadFondo = 0;
posX = 0;
posY = 0;
decorativoX = 0;
}
