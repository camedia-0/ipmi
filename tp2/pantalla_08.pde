void pantalla8(){
String t = "y las explota!";

// Fondo
image(pantalla8, posX, 0, 960, 480);
posX -= 0.8;

// Transición (rect que tapa toda la pantalla)
fill(255, alphap);
if(alphap <= 255){
  alphap -= velocidad;
}
rect(0, 0, width, height);

// Texto
fill(254, 187, 82, opacidadTextos);
rect(0, 32, width, 35);
fill(255, opacidadTextos);
textFont(titulos2);
text(t, 40, 60);
if (millis() - tiempo > 200){
  if(opacidadTextos <= 255){
  opacidadTextos += velocidad;
  }
  }
}
