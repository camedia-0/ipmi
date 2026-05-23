void pantalla5(){
String t1 = "HAKASE SHINONOME";
String tt1 = "La profesora, es una niña prodigio de 8 años. A pesar de su intelecto actúa como una niña de su edad.";

String t2 = "SAKAMOTO";
String tt2 = "El gato parlante, supuestamente, responsable de la casa ya que en años gatunos es el mayor de todos.";

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

// Personajes
posY = 35;
tint(255, opacidadPersonaje);
image(hakase, posX, posY, 420, 420);
image(sakamoto, posX, posY, 420, 420);
if (millis() - tiempo > 1000){
  if(opacidadPersonaje < 255){
  opacidadPersonaje += 5;
  }
  if(posX <= 390){
  posX = posX + (390 - posX) * 0.02;
  }
}

// Texto 1
fill(255, 184, 63, opacidadTextos);
textFont(titulos);
text(t1, 40, 125);
fill(50, opacidadTextos);
textFont(texto);
text(tt1, 40, 145, 292, 85);
if (millis() - tiempo > 2400){
  if(opacidadTextos <= 255){
  opacidadTextos += velocidad;
  }
  
// Texto 2
}
fill(204, 87, 94, opacidadTextos);
textFont(titulos);
text(t2, 40, 275);
fill(50, opacidadTextos);
textFont(texto);
text(tt2, 40, 295, 292, 85);
if (millis() - tiempo > 2400){
  if(opacidadTextos <= 255){
  opacidadTextos += velocidad;
  }
}
}
