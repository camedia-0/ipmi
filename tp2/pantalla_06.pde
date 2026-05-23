void pantalla6(){
String t = "Nichijou no es una historia lineal...";

// Fondo
image(pantalla6, posX, 0, 853, 480);
posX -= 0.8;

// Transición (rect que tapa toda la pantalla)
fill(255, alphap);
if(alphap <= 255){
  alphap -= velocidad;
}
rect(0, 0, width, height);

// Texto
fill(30, opacidadTextos);
rect(0, 32, width, 35);
fill(255, opacidadTextos);
textFont(titulos2);
text(t, 40, 60);
if (millis() - tiempo > 500){
  if(opacidadTextos <= 255){
  opacidadTextos += velocidad;
  }
  }
}
