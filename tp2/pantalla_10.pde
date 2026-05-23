void pantalla10(){
String t1 = "Nichijou no es más que la vida";
String t2 = "cotidiana vista de la mejor manera!";

// Fondo
image(img_final, posX, -20, 640*1.05, 480*1.05);
tint(255, opacidadPersonaje);
image(nichijou_logo_2, 0, 160, 640/1.5, 480/1.5);
if (millis() - tiempo > 1000){
  if(opacidadPersonaje < 255){
  opacidadPersonaje += 5;
  }
}

// Transición (rect que tapa toda la pantalla)
fill(255, alphap);
if(alphap <= 255){
  alphap -= velocidad;
}
rect(0, 0, width, height);

// Texto1
fill(136, 190, 255, opacidadTextos);
rect(0, 32, width, 35);
fill(255, opacidadTextos);
textFont(titulos2);
text(t1, 40, 60);
if (millis() - tiempo > 1800){
  if(opacidadTextos <= 255){
  opacidadTextos += velocidad;
  }
}

// Texto 2
if (millis() - tiempo > 2000){
fill(136, 190, 255, opacidadTextos2);
rect(0, 64, width, 35);
fill(255, opacidadTextos2);
textFont(titulos2);
text(t2, 40, 90);
if (millis() - tiempo > 1800){
  if(opacidadTextos2 <= 255){
  opacidadTextos2 += velocidad;
  }
  }
}

}
