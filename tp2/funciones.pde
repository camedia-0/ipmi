void progresoPantallas(){
if (pantalla == 1){  
  pantalla1();
  }

if (pantalla == 2){
    pantalla2();
  }
  
if (pantalla == 3){  
  pantalla3();
  }

if (pantalla == 4){
    pantalla4();
  }
  
if (pantalla == 5){  
  pantalla5();
  }
  
if (pantalla == 6){  
  pantalla6();
  }
  
if (pantalla == 7){  
  pantalla7();
  }

if (pantalla == 8){  
  pantalla8();
  }

if (pantalla == 9){  
  pantalla9();
  }

if (pantalla == 10){  
  pantalla10();
  }
  
}

void transicionEntrePantallas(){
if (pantalla >= 1 && (millis() - tiempo) > (tiempoPantalla - 1100) && pantalla <= 5){
  alphat += velocidad;
  fill(255, alphat);
  rect(0, 0, width, height);
      if(alphat >= 255){
        pantalla ++;
        tiempo = millis();
        alphat = 0;
        resetearVariables();
      }
} else if (pantalla == 6 || pantalla == 7 || pantalla == 8){
  tiempoPantalla = 4000;
  if((millis() - tiempo) > (tiempoPantalla - 500)){
    alphat += velocidad;
    fill(255, alphat);
    rect(0, 0, width, height);
        if(alphat >= 255){
          pantalla ++;
          tiempo = millis();
          alphat = 0;
          resetearVariables();
        }
    }
} else if (pantalla == 9){
    tiempoPantalla = 8000;
    if((millis() - tiempo) > (tiempoPantalla - 1100)){
    alphat += velocidad;
    fill(255, alphat);
    rect(0, 0, width, height);
        if(alphat >= 255){
          pantalla ++;
          tiempo = millis();
          alphat = 0;
          resetearVariables();
         }
    } 
} else if (pantalla == 10){
    if(transicionReinicio == true){
    alphat += velocidad;
    fill(255, alphat);
    rect(0, 0, width, height);
        if(alphat >= 255){
          pantalla = 0;
          tiempo = millis();
          alphat = 0;
          resetearVariables();
          tiempo = 0;
         }
    }
}


}
