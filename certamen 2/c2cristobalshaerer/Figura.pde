class Figura{
  int year, mes, dia;
  float maxima, media, minima;//temperatura
  float medioviento, mediorocio, humedadmed;
  float x, y,sum, promMax, promMedia, promMin, r;
  int red, green, blue;
  float winddir;
  float posx, posy;
  float hummed2, maxima2, minima2;
  float promrociomed;

  Figura(int year, int mes, int dia, float maxima, float media, float minima, float medioviento, float mediorocio, float humedadmed, float winddir){
    this.year = year;
    this.mes = mes;
    this.dia = dia;
    this.maxima = map(maxima, 20, 40, 200, 0);//semestral
    this.media = media;
    this.minima = map(minima, 20, 30, 105, 255);//semestral
    this.medioviento = medioviento;
    this.mediorocio = mediorocio;
    this.humedadmed = map(humedadmed, 100, 90, 75, 105);//semestral
    this.winddir = winddir;//Diario
    x = 333.33;//Mensual
    red = 255;
    green = 255;
    blue = 255;
    posx = 20;
    posy = 600;
    hummed2 = map(humedadmed, 100, 90, 400, 430);
    maxima2 = map(maxima,20, 40, 400, 350);
    minima2 = map(minima,20, 30, 505, 555);
  }


//////////////////////////////////////////////////////////
//  VISUALIZACION POR SEMESTRE                         //
/////////////////////////////////////////////////////////
void textsem(){
  /*Aquí aparecerán los textos y leyenda correspondiente a la visualización
  por semestres*/
  pushMatrix();
  fill(0);//Color negro de letra
  textSize(30);//Tamaño letra que indica semestres
  text("Primer semestre", 20, 50);
  text("Segundo semestre", 20, 300);
  popMatrix();

  pushMatrix();
  fill(0);//Color negro de letra
  textSize(10);//Tamaño fuente de la leyenda
  text("Rojo = Temperatura Máxima | Azul = Temperatura Mínima | Círculo verde = Humedad media",400,20);
  popMatrix();

}
  void tmax(float index){
    // Líneas que marcan temperatura máxima
  if(index > 0 && index <= 180){
    stroke(200, 0 , 0);//Color de las lineas(está en 200 por que quiero que sea más oscuro que el rojo máximo)
    strokeWeight(3);//Grosor de la línea.
    line(index * 5.5 + 2, humedadmed, index * 5.5 + 2, maxima);//lineas que varían tamaño según temperatura máxima
    /*index *5.5 es para la distancia entre cada linea y le sumo dos para que el primer valor no sea 0*/
  }
  if(index > 180 && index < 365){//Condición para que el segundo semestre aparezca abajo
    stroke(200, 0 , 0);// Color de las líneas
    strokeWeight(3);//Grosor trazo
    line((index - 181) * 5.5 + 2, hummed2, (index - 181) * 5.5 + 2, maxima2);//lineas cuyo tamaño varía según temperatura máxima
  }
  if(index >=365){
    index =1;
  }
}

  void tmin(float index){
    //Líneas que marcan temperatura mínima
    if(index > 0 && index <= 180){//Primer semestre
      stroke(0, 0 , 200);//color azul
      strokeWeight(3);//Grosor trazo
      line(index * 5.5 + 2, humedadmed, index * 5.5 + 2, minima);//Líneas azules cuyo tamaño varía según la temperatura mínima
    }
    if(index > 180 && index < 365){//Segundo semestre
      stroke(0, 0, 200);//Color azul
      strokeWeight(3);//Grosor trazo
      line((index - 181) * 5.5 + 2, hummed2, (index - 181) * 5.5 + 2, minima2);
    }
  }

  void hum(float index){
    if(index > 0 && index <= 180){
      pushMatrix();
        noStroke();
        fill(0, 255, 0);
        ellipse(index * 5.5 + 2, humedadmed, 5, 5);//Elipse con posición
      popMatrix();
    }
    if(index > 180 && index < 365){
      pushMatrix();
        noStroke();
        fill(0, 255, 0);
        ellipse((index - 181) * 5.5 + 2, hummed2, 5, 5);//Elipse con posición
      popMatrix();
    }
  }

  ///////////////////////////////////////////////////////////////////////////////
  /////MENSUAL
  ///////////////////////////////////////////////////////////////////////////////

  void rocio(float index) {// sin usar
    //Círculos repetidos y con rotacion en donde los niveles hacia el exterior varían segun media del rocío
    fill(red, 0, blue);
    textSize(25);
    text("Visalización mensual de la media de rocío", 250, 280);

    //////////////////
    ////ENERO/////////
    //////////////////

		/*
		Todas estas funciones pueden ser solo una que recibe los parámetros necesarios para modificarse y no repetir 11 veces más la misma función

		*/
      pushMatrix();
        promrociomed = 23;
        translate(150, 150);//origen en el centro del mes
        fill(0);//letra negra
        textSize(20);//Tamaño letra
        text("Enero", -25, -100);
        for(int l = 0; l < promrociomed; l++){
          for(int i = 0; i < promrociomed / 5; i++){
          fill(0, 0, blue);
          stroke(1);
          strokeWeight(1);
          ellipse(15 * i, 0, 5, 5);
        }
        rotate(radians(360 / promrociomed * 2));
      }
      popMatrix();

      //////////////////
      ////FEBRERO///////
      //////////////////

      pushMatrix();
        promrociomed = 23;
        translate(300, 150);//origen en el centro del sketch
        fill(0);
        textSize(20);
        text("Febrero", -25, -100);
        for(int l = 0; l < promrociomed; l++){
          for(int i = 0; i < promrociomed / 5; i++){
          fill(0, 0, blue);
          stroke(0);
          strokeWeight(1);
          ellipse(15 * i, 0, 5, 5);
        }
        rotate(radians(360 / promrociomed * 2));
      }
      popMatrix();

      /////////////////
      ////MARZO////////
      /////////////////

      pushMatrix();
        promrociomed = 22;
        translate(450, 150);//origen en el centro del sketch
        fill(0);
        textSize(20);
        text("Marzo", -25, -100);
        for(int l = 0; l < promrociomed; l++){
          for(int i = 0; i < promrociomed / 5; i++){
          fill(0, 0, blue);
          stroke(0);
          strokeWeight(1);
          ellipse(15 * i, 0, 5, 5);
        }
        rotate(radians(360 / promrociomed * 2));
      }
      popMatrix();

      /////////////////
      ////ABRIL////////
      /////////////////

      pushMatrix();
        promrociomed = 23;
        translate(600, 150);//origen en el centro del sketch
        fill(0);
        textSize(20);
        text("Abril", -25, -100);
        for(int l = 0; l < promrociomed; l++){
          for(int i = 0; i < promrociomed / 5; i++){
          fill(0, 0, blue);
          stroke(0);
          strokeWeight(1);
          ellipse(15 * i, 0, 5, 5);
        }
        rotate(radians(360 / promrociomed * 2));
      }
      popMatrix();

      /////////////////
      ////MAYO////////
      ////////////////

      pushMatrix();
        promrociomed = 23;
        translate(750, 150);//origen en el centro del sketch
        fill(0);
        textSize(20);
        text("Mayo", -25, -100);
        for(int l = 0; l < promrociomed; l++){
          for(int i = 0; i < promrociomed / 5; i++){
          fill(0, 0, blue);
          stroke(0);
          strokeWeight(1);
          ellipse(15 * i, 0, 5, 5);
        }
        rotate(radians(360 / promrociomed * 2));
      }
      popMatrix();

      /////////////////
      ////JUNIO////////
      /////////////////

      pushMatrix();
        promrociomed = 24;
        translate(900, 150);//origen en el centro del sketch
        fill(0);
        textSize(20);
        text("Junio", -25, -100);
        for(int l = 0; l < promrociomed; l++){
          for(int i = 0; i < promrociomed / 5; i++){
          fill(0, 0, blue);
          stroke(0);
          strokeWeight(1);
          ellipse(15 * i, 0, 5, 5);
        }
        rotate(radians(360 / promrociomed * 2));
      }
      popMatrix();

      /////////////////
      ////JULIO////////
      /////////////////

      pushMatrix();
        promrociomed = 25;
        translate(150, 450);//origen en el centro del sketch
        fill(0);
        textSize(20);
        text("Julio", -25, -100);
        for(int l = 0; l < promrociomed; l++){
          for(int i = 0; i < promrociomed / 5; i++){
          fill(0, 0, blue);
          stroke(0);
          strokeWeight(1);
          ellipse(15 * i, 0, 5, 5);
        }
        rotate(radians(360 / promrociomed * 2));
      }
      popMatrix();

      /////////////////
      ////AGOSTO///////
      /////////////////

      pushMatrix();
        promrociomed = 25;
        translate(300, 450);//origen en el centro del sketch
        fill(0);
        textSize(20);
        text("Agosto", -25, -100);
        for(int l = 0; l < promrociomed; l++){
          for(int i = 0; i < promrociomed / 5; i++){
          fill(0, 0, blue);
          stroke(0);
          strokeWeight(1);
          ellipse(15 * i, 0, 5, 5);
        }
        rotate(radians(360 / promrociomed * 2));
        }
      popMatrix();

      /////////////////
      ////SEPTIEMBRE///
      /////////////////

      pushMatrix();
        promrociomed = 25;
        translate(450, 450);//origen en el centro del sketch
        fill(0);
        textSize(20);
        text("Septiembre", -25, -100);
        for(int l = 0; l < promrociomed; l++){
          for(int i = 0; i < promrociomed / 5; i++){
          fill(0, 0, blue);
          stroke(0);
          strokeWeight(1);
          ellipse(15 * i, 0, 5, 5);
        }
        rotate(radians(360 / promrociomed * 2));
        }
      popMatrix();

      /////////////////
      ////OCTUBRE///////
      /////////////////

      pushMatrix();
        promrociomed = 24;
        translate(600, 450);
        fill(0);
        textSize(20);
        text("Octubre", -25, -100);
        for(int l = 0; l < promrociomed; l++){
          for(int i = 0; i < promrociomed / 5; i++){
          fill(0, 0, blue);
          stroke(0);
          strokeWeight(1);
          ellipse(15 * i, 0, 5, 5);
        }
        rotate(radians(360 / promrociomed * 2));
        }
      popMatrix();

      /////////////////
      ////NOVIEMBRE////
      /////////////////

      pushMatrix();
      promrociomed = 24;
      translate(750, 450);//origen en el centro del sketch
      fill(0);
      textSize(20);
      text("Noviembre", -25, -100);
      for(int l = 0; l < promrociomed; l++){
        for(int i = 0; i < promrociomed / 5; i++){
        fill(0, 0, blue);
        stroke(0);
        strokeWeight(1);
        ellipse(15 * i, 0, 5, 5);
      }
      rotate(radians(360 / promrociomed * 2));
      }
      popMatrix();

      /////////////////
      ////DICIEMBRE////
      /////////////////

      pushMatrix();
        promrociomed = 24;
        translate(900, 450);//origen en el centro del sketch
        fill(0);
        textSize(20);
        text("Diciembre", -25, -100);
        for(int l = 0; l < promrociomed; l++){
          for(int i = 0; i < promrociomed / 5; i++){
            fill(0, 0, blue);
            stroke(0);
            strokeWeight(1);
            ellipse(15 * i, 0, 5, 5);
        }
        rotate(radians(360 / promrociomed * 2));
        }
      popMatrix();
}

  /////////////////////////////////////
  /// DIARIO
  ////////////////////////////////////

  void vientomov(int z){
/*Elipses que se elevan al presionar x y se desplazan según velocidad del viento*/
    pushMatrix();
      fill(red, 0, blue);//Morado para el título
      textSize(40);
      text("Media viento por día", 30, 50);
      fill(0, 0, 0, 50);
      textSize(20);
      text("Presionar x para iniciar", 400, 300);
      text("Presiona b para pasar los días", 350, 325);
      fill(0);
      textSize(10);
      text("Velocidad = Media del viento", 800, 20);
      for(int i = 1; i < mediorocio; i++){//la cantidad de elipses son según la media del rocío
        fill(0, 0, blue, 80);
        ellipse(posx * i + 4, posy, 20, 20);
        if(z == 1 && posy > 300){//Al apretar x, se elevan las elipses
          posy -= .2;
        }
        if(posy < 470){//Son desplazadas según la media del viento
          posx += medioviento / 40;
        }
      }
    popMatrix();
  }
}
