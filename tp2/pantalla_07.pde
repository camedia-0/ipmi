void pantalla7(){
String t = "toma las historias cotidianas...";

// Fondo
image(pantalla7, posX-170, 0, 855, 480);
posX += 0.5;

// Transición (rect que tapa toda la pantalla)
fill(255, alphap);
if(alphap <= 255){
  alphap -= velocidad;
}
rect(0, 0, width, height);

// Texto
fill(255, opacidadTextos);
rect(0, 32, width, 35);
fill(50, opacidadTextos);
textFont(titulos2);
text(t, 40, 60);
if (millis() - tiempo > 500){
  if(opacidadTextos <= 255){
  opacidadTextos += velocidad;
  }
}

}
