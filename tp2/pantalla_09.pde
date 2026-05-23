void pantalla9(){
String t1 = "Ya sea de formas absurdas...";
String t2 = "o adorables!";

// Transición (rect que tapa toda la pantalla)
fill(255, alpha);
if(alpha <= 255){
  alpha += velocidad;
}
rect(0, 0, width, height);


// Texto 1
fill(255, 184, 63, opacidadTextos);
rect(00, 160, width, 120);
fill(255, opacidadTextos);
textFont(titulos2);
text(t1, 70, 170, 240, 200);
if (millis() - tiempo > 1100){
  if(opacidadTextos <= 255){
  opacidadTextos += velocidad;
  }
}

// Nano
tint(255, opacidadPersonaje);
image(nano_lol, 110, posY+80, 640, 480);
if (millis() - tiempo > 1000){
  if(opacidadPersonaje < 255){
  opacidadPersonaje += 5;
  }
  if(posY <= 75){
  posY = posY - (75 + posY) * 0.02;
  }
}

// Texto 2
if (millis() - tiempo > 4000){
  fill(147, 224, 99, opacidadTextos2);
  rect(0, 160, width, 120);
  fill(255, opacidadTextos2);
  textFont(titulos2);
  text(t2, 390, 205, 240, 200);
  if (millis() - tiempo > 1100){
    if(opacidadTextos2 <= 255){
    opacidadTextos2 += velocidad;
    }
  }
}

// Hakase
if (millis() - tiempo > 4000){
  tint(255, opacidadPersonaje2);
  image(hakase_lol, -40, posY2+160, 640/1.2, 480/1.2);
  if (millis() - tiempo > 1500){
    if(opacidadPersonaje2 < 255){
    opacidadPersonaje2 += 5;
    }
    if(posY2 <= 75){
    posY2 = posY2 - (75 + posY2) * 0.02;
    }
  }
}
}
