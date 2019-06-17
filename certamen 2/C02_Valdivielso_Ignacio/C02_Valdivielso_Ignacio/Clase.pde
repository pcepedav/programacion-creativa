//Certamen Programación Creativa 02
//Ignacio Valdivielso Valenzuela
//Profesor: Nicolás Troncoso Lopez
//Fecha: 03/06/2019
//Visualización de datos
//Visualización de datos del 2015 - Temperaturas medidas en los 365 días (min, media,max) y con las presipitaiciones, y los promedios de los niveles de presión en el mar por meses (min, media y max)

class Clase {
  String AST, evento;
  int maximat, mediat, minimat, i, presipi, maxpres, red, green, blue;
  float x, y, rot, medrot, maxtemp, mintemp, medtemp /*escpresmax*/;
  PVector pos, vel;

  Clase(String AST, String evento, int maximat, int mediat, int minimat, int i, int presipi) {
    this.AST= AST;//Fechas
    this.maximat = maximat*3;
    this.mediat = mediat*3;
    this.minimat = minimat*3;
    this.i=0;
    this.rot = map(i, 0, 365, 0, TWO_PI);
    this.medrot = map(i, 0, 12, 0, TWO_PI);
    this.evento = evento;
    this.presipi=presipi;
    this.maxtemp = map(maximat, 30, 35, 71, 140);
    this.mintemp = map(minimat, 23, 28, 0, 70);
    this.medtemp = map(mediat, 27, 31, 50, 95);
    this.red = 50;
    this. green = 0;
    this.blue = 0;

    //this.escpresmax = map(maxpres, 252.75, 253.75, 10,300);
  }
  void Textoinicial() {//texto principal para indicación 
    pushMatrix();
    fill(100);
    rect(0, 0, 1400, 30);
    fill(255);
    textSize(20);
    text("Visualización Temperatura (Q)", 300, 20); 
    text("Visualización Niveles de Presión del mar (W)", 800, 20);
    fill(255);
    popMatrix();
  }

  //====================Void Visualización Temperaturas====================//
  void textostemp() {//info de la visualización de temperatura
    pushMatrix();
    translate(width/2, height/2);
    fill(0, 50, 150);
    rect(-540, -100, 700, 400);
    fill(255);
    textSize(30);
    text("Temperatura Min, Media y Max", -690, -265); 
    text("Durante el Año + Precipitación", -690, -235);
    textSize(20);
    text("La visualización muestra la actividad", -690, -200);
    text("de la temperatura durante el año 2015 (365 días)", -690, -180);
    text("los puntos que más se acercan al centro", -690, -160);
    text("son la representación de la temperatura mínima ", -690, -140);
    text("y los puntos exteriores", -690, -120);
    text("representan la temperatura máxima", -690, -100);
    text("los puntos ubicados en el medio", -690, -80);
    text("de la línea representa la media de la temperatura,", -690, -60);
    text("y la circunferencia central", -690, -40);
    text("representa la precipitación del año.  ", -690, -20);
    popMatrix();
  }
  void textostemp2() {//leyenda
    pushMatrix();
    translate(width/2, height/2);
    fill(0, 50, 150);
    rect(-540, 300, 750, 200);
    fill(255);
    textSize(30);
    text("Leyenda", -690, 235); 
    textSize(15);
    text("Temperatura", -655, 265);
    text("Maxima", -655, 280);
    text("Temperatura", -525, 265);
    text("Minima", -525, 280);
    text("Temperatura", -395, 265);
    text("Media", -395, 280);
    text("Rango", -265, 265);
    text("Temperatura", -265, 280);
    text("Anillos", -645, 330);
    text("Medición de la temperatura", -645, 350);
    text("4 anillos: 25-30-35-40", -645, 370);
    //text("Durante el Año + Precipitación", -690, -235);
    fill(150, 0, 0);
    ellipse(-670, 270, 20, 20);
    fill(#37AFA6);
    ellipse(-540, 270, 20, 20);
    fill(255);
    ellipse(-410, 270, 20, 20);
    strokeWeight(5);
    stroke(0, 255, 0);
    line(-280, 290, -280, 250);
    noFill();
    strokeWeight(4);
    stroke(#14224F);
    ellipse(-670, 340, 30, 30);
    strokeWeight(5);
    stroke(0, 255, 0);
    line(-280, 290, -280, 250);
    popMatrix();
  }
  void templinea() {//linea que une los puntos de maxima y minima temperatura
    pushMatrix();
    translate(width/1.5, height/2);
    rotate(270);
    strokeWeight(2);
    rotate(rot);
    translate(150, 0);
    stroke(0, 255, 0);
    line(mintemp, i, maxtemp, i);
    /*noStroke();
     fill(255,0,0);
     ellipse(mintemp,i, 10,10);*/
    popMatrix();
  }
  void pmax() {//punto que indica la temperatura maxima
    pushMatrix();
    translate(width/1.5, height/2);
    rotate(270);
    noStroke();
    rotate(rot);
    fill(150, 0, 0);
    translate(150, 0);
    ellipse(maxtemp, i, 7, 7);
    popMatrix();
  }
  void pmin() {//punto que indica la temperatura minima
    pushMatrix();
    translate(width/1.5, height/2);
    rotate(270);
    noStroke();
    rotate(rot);
    fill(#37AFA6);
    translate(150, 0);
    ellipse(mintemp, i, 7, 7);
    popMatrix();
  }
  void pmedio() {//punto que indica la temperatura media
    pushMatrix();
    translate(width/1.5, height/2);
    rotate(270);
    strokeWeight(3);
    rotate(rot);
    translate(150, 0); 
    stroke(250);
    point(medtemp, i);
    popMatrix();
  }
  void medicion() {//Arcos que indica valor de medición de las temperaturas
    pushMatrix();
    translate(width/1.5, height/2);
    rotate(rot);
    strokeWeight(1/10);
    stroke(#14224F);
    noFill();
    rectMode(CENTER);
    ellipse(0, 0, 300, 300);
    ellipse(0, 0, 425, 425);
    ellipse(0, 0, 550, 550);
    ellipse(0, 0, 675, 675);
    popMatrix();
  }
  void medperi() {//Indicadores de periodos(meses)
    pushMatrix();
    translate(width/1.5, height/2);
    rotate(medrot);
    translate(150, 0);
    strokeWeight(1);
    stroke(#7F1919);
    line(160, i, 180, i); 
    popMatrix();
  }
  void presipitacion() {//indicador de las presipitaciones
    pushMatrix();
    translate(width/1.5, height/2);
    rotate(270);
    strokeWeight(0.5);
    rotate(rot);
    translate(20, 0);
    stroke(30, 10, 200);
    ellipse(100, i, presipi+20, i);
    popMatrix();
  }
  //====================Void Visualización Presión Mar====================//
  void textosmar() {//info de la visualización de los niveles de presión del mar
    pushMatrix();
    translate(width/2, height/2);
    fill(0, 50, 150);
    noStroke();
    rect(-540, -100, 720, 400);
    fill(255);
    textSize(30);
    text("Niveles de Presión del mar", -690, -265); 
    text("Maxima, Media y Minima en meses", -690, -235);
    textSize(20);
    text("La visualización muestra el comportamiento", -690, -200);
    text("de los niveles del mar en los 12 meses del año,", -690, -180);
    text("se encuentran en la parte superior representa", -690, -160);
    text("el máximos del nivel de presión del mar,", -690, -140);
    text("la figura de color azul- celeste que sus puntos ", -690, -120);
    text("se ubican en la parte inferior representan el mínimo", -690, -100);
    text("y la figura entre las entremedio representa la media.", -690, -80);
    text("Estas se dividen en 12 puntos", -690, -60);
    text("que representan los meses", -690, -40);
    popMatrix();
  }
  void textosmar2() {//leyenda
    pushMatrix();
    translate(width/2, height/2);
    fill(0, 50, 150);
    rect(-540, 300, 750, 200);
    fill(255);
    textSize(30);
    text("Leyenda", -690, 235); 
    textSize(15);
    text("Nivel", -655, 265);
    text("Maximo", -655, 280);
    text("Nivel", -525, 265);
    text("Minimo", -525, 280);
    text("Nivel", -395, 265);
    text("Medio", -395, 280);
    text("Rango", -265, 265);
    text("de niveles", -265, 280);
    //text("Durante el Año + Precipitación", -690, -235);
    fill(#7F1919);
    ellipse(-670, 270, 20, 20);
    fill(#000095);
    ellipse(-540, 270, 20, 20);
    fill(#FFE22C);
    ellipse(-410, 270, 20, 20);
    strokeWeight(5);
    stroke(0, 255, 0);
    line(-280, 290, -280, 250);
    noFill();
    strokeWeight(4);
    stroke(#14224F);
    ellipse(-670, 340, 30, 30);
    strokeWeight(5);
    stroke(#7F1919);
    line(-280, 290, -280, 250);
    stroke(#000095);
    line(-290, 290, -290, 250);
    stroke(#D3D389);
    line(-300, 290, -300, 250);

    popMatrix();
  }
  void presMax() {//figura que indica la maxima de presión
    pushMatrix();
    translate(width/2.2, height/2);
    strokeWeight(2);
    stroke(#7F1919);
    fill(#FC6BB1);
    beginShape();
    vertex(0, 0);
    vertex(58, -340);
    vertex(116, -340);
    vertex(174, -370);
    vertex(232, -280);
    vertex(290, -310);
    vertex(348, -340);
    vertex(406, -340);
    vertex(464, -280);
    vertex(522, -250);
    vertex(580, -250);
    vertex(638, -280);
    vertex(696, -310);
    vertex(754, 0);
    endShape();
    popMatrix();
  }
  void presMaxp() {//puntos que indican la maxima de presión
    pushMatrix();
    translate(width/2.2, height/2);
    strokeWeight(10);
    stroke(#7F1919);
    fill(#CC3383);
    beginShape(POINTS);
    vertex(58, -340);
    vertex(116, -340);
    vertex(174, -370);
    vertex(232, -280);
    vertex(290, -310);
    vertex(348, -340);
    vertex(406, -340);
    vertex(464, -280);
    vertex(522, -250);
    vertex(580, -250);
    vertex(638, -280);
    vertex(696, -310);
    endShape();
    popMatrix();
  }
  void presMin() {
    pushMatrix();
    translate(width/2.2, height/2);
    strokeWeight(2);
    stroke(#861DF3);
    fill(#406ADD);
    beginShape();
    vertex(0, 0);
    vertex(58, -220);
    vertex(116, -220);
    vertex(174, -250);
    vertex(232, -190);
    vertex(290, -190);
    vertex(348, -220);
    vertex(406, -220);
    vertex(464, -160);
    vertex(522, -100);
    vertex(580, -130);
    vertex(638, -130);
    vertex(696, -190);
    vertex(754, 0);
    endShape();
    popMatrix();
  }
  void presMin2() {//figura que indica la minima de presión
    pushMatrix();
    translate(width/2.2, height/2);
    strokeWeight(2);
    stroke(#000095);
    fill(#406ADD);
    beginShape();
    vertex(0, 0);
    vertex(58, 220);
    vertex(116, 220);
    vertex(174, 250);
    vertex(232, 190);
    vertex(290, 190);
    vertex(348, 220);
    vertex(406, 220);
    vertex(464, 160);
    vertex(522, 100);
    vertex(580, 130);
    vertex(638, 130);
    vertex(696, 190);
    vertex(754, 0);
    endShape();
    popMatrix();
  }
  void presMinp() {//puntos que indican la maxima de presión
    pushMatrix();
    translate(width/2.2, height/2);
    strokeWeight(10);
    stroke(#202099);
    fill(#406ADD);
    beginShape(POINTS);
    vertex(58, 220);
    vertex(116, 220);
    vertex(174, 250);
    vertex(232, 190);
    vertex(290, 190);
    vertex(348, 220);
    vertex(406, 220);
    vertex(464, 160);
    vertex(522, 100);
    vertex(580, 130);
    vertex(638, 130);
    vertex(696, 190);
    endShape();
    popMatrix();
  }
  void presMedi() {//figura que indica la media de presión
    pushMatrix();
    translate(width/2.2, height/2);
    strokeWeight(2);
    stroke(#D3D389);
    fill(#FFFFC8);
    beginShape();
    vertex(0, 0);
    vertex(58, -50);
    vertex(116, -50);
    vertex(174, -60);
    vertex(232, -30);
    vertex(290, -60);
    vertex(348, -50);
    vertex(406, -50);
    vertex(464, -60);
    vertex(522, -60);
    vertex(580, -60);
    vertex(638, -60);
    vertex(696, -90);
    vertex(754, 0);
    endShape();
    popMatrix();
  }
  void presMedip() {//puntos que indican la media de presión
    pushMatrix();
    translate(width/2.2, height/2);
    strokeWeight(10);
    stroke(#FFE22C);
    fill(#FFFFC8);
    beginShape(POINTS);
    vertex(58, -50);
    vertex(116, -50);
    vertex(174, -60);
    vertex(232, -30);
    vertex(290, -60);
    vertex(348, -50);
    vertex(406, -50);
    vertex(464, -60);
    vertex(522, -60);
    vertex(580, -60);
    vertex(638, -60);
    vertex(696, -90);
    endShape();
    popMatrix();
  }
  void evento() {
    pushMatrix();
    translate(width/1.5, height/2);
    rotate(rot);
    translate(150, 0);
    ellipse(maximat +20, i, 3, 3);
    popMatrix();
  }
}
