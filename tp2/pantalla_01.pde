void pantalla1(){
String t = "YUUKO AIOI";
String tt = "Enérgica y expresiva, de personalidad despreocupada y tolerante. Suele tener problemas para concentrarse.";

// Transición (rect que tapa toda la pantalla)
fill(255, alpha);
if(alpha <= 255){
  alpha += velocidad;
}
rect(0, 0, width, height);

// Fondo (hojas y decorativo)
tint(255, opacidadFondo);
image(hojas, hojasX1, -50, 640, 480);
image(hojas, hojasX2, -50, 640, 480);

hojasX1 -= velHojas;
hojasX2 -= velHojas;

if (hojasX1 <= -width) {
    hojasX1 = width;
  }
if (hojasX2 <= -width) {
    hojasX2 = width;
}

image(decorativo, decorativoX, 300, 240, 240);
if (millis() - tiempo < tiempoPantalla){
  decorativoX = decorativoX + 0.05;
}
if (millis() - tiempo > 1500){
  if (opacidadFondo < 255){
  opacidadFondo += 3;
  }
}

// Personaje
tint(255, opacidadPersonaje);
image(yuuko, posX, posY+35, 420, 420);
if (millis() - tiempo > 1000){
  if(opacidadPersonaje < 255){
  opacidadPersonaje += 5;
  }
  if(posX <= 320){
  posX = posX + (320 - posX) * 0.02;
  }
}

// Texto
fill(238, 78, 88, opacidadTextos);
textFont(titulos);
text(t, 40, 205);
fill(50, opacidadTextos);
textFont(texto);
text(tt, 40, 225, 292, 85);
if (millis() - tiempo > 2400){
  if(opacidadTextos <= 255){
  opacidadTextos += velocidad;
  }
}
}
