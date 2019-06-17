//Autor: Felipe Castillo
//Certamen 02/Programación Creativa
//Profesor: Nicolás Troncoso
//Universidad del Desarrollo
//Código Clase

class Clase {
  String fecha;
  int maximaTemp;
  int meanTemp;
  int minimaTemp;
  int dewpoint;
  int meandew;
  int mindew;
  float x;
  float y;
  float rot;

    Clase(String fecha, int maximaTemp, int meanTemp, int minimaTemp, int dewpoint, int meandew, int mindew, int i) {
    this.fecha = fecha;
    this.maximaTemp = maximaTemp;
    this.meanTemp = meanTemp;
    this.minimaTemp = minimaTemp;
    this.dewpoint = dewpoint;
    this.meandew = meandew;
    this.mindew = mindew;
		// La rotación deja el 01 de Enero en el lugar 6 de un reloj circular.
		// Cognitivamente el inicio de lectura en un círculo es arriba,
		// como si fueran las 12 del día.
    this.rot = map(i, 0, 365, 0, TWO_PI);

  }

  void visualizacion1() {

      // Metodo para inicializar la visualización mediante el uso de la tecla 1

    if (key == '1') {

      // Metodo para el dato de Max TemperatureC

      pushMatrix();

      translate(width/2, height/2);
      stroke(75,110,151);
      strokeWeight(6);
      rotate(rot);
      line (i, maximaTemp*15.6, i, maximaTemp*15.6);

      popMatrix();

      // Metodo para el dato de Mean TemperatureC

      pushMatrix();

      translate(width/2, height/2);
      stroke(54,130,156);
      strokeWeight(6);
      rotate(rot);
      line(i, meanTemp*15.6, i, meanTemp*15.6);

      popMatrix();

      // Metodo para el dato de Min TemperatureC

      pushMatrix();

      translate(width/2, height/2);
      stroke(71,149,149);
      strokeWeight(6);
      rotate(rot);
      line(i, minimaTemp*15.6, i, minimaTemp*15.6);

      popMatrix();

      // Metodo para el dato de DewpointC

      pushMatrix();

      translate(width/2, height/2);
      stroke(75,164,164);
      strokeWeight(6);
      rotate(rot);
      line(i, dewpoint*15.6, i, dewpoint*15.6);

      popMatrix();

      // Metodo para el dato de MeanDew PointC

      pushMatrix();

      translate(width/2, height/2);
      stroke(90,176,160);
      strokeWeight(6);
      rotate(rot);
      line(i, meandew*15.6, i, meandew*15.6);

      popMatrix();

      // Metodo para el dato de Min DewpointC

      pushMatrix();

      translate(width/2, height/2);
      stroke(107,196,204);
      strokeWeight(6);
      rotate(rot);
      line(i, mindew*15.6, i, mindew*15.6);

      popMatrix();

    }

  }

  void visualizacion2() {

      // Metodo para inicializar la visualización mediante el uso de la tecla 2

    if (key == '2') {

      // Metodo para el dato de Max TemperatureC

      pushMatrix();

      translate(width/2, height/2);
      stroke(75,110,151);
      strokeWeight(1);
      rotate(rot);
      ellipse(i, maximaTemp*10.5, i, maximaTemp*10.5);

      popMatrix();

      // Metodo para el dato de Mean TemperatureC

      pushMatrix();

      translate(width/2, height/2);
      stroke(54,130,156);
      strokeWeight(1);
      rotate(rot);
      ellipse(i, meanTemp*10.5, i, meanTemp*10.5);

      popMatrix();

      // Metodo para el dato de Min TemperatureC

      pushMatrix();

      translate(width/2, height/2);
      stroke(71,149,149);
      strokeWeight(1);
      rotate(rot);
      ellipse(i, minimaTemp*10.5, i, minimaTemp*10.5);

      popMatrix();

      // Metodo para el dato de DewpointC

      pushMatrix();

      translate(width/2, height/2);
      stroke(75,164,164);
      strokeWeight(1);
      rotate(rot);
      ellipse(i, dewpoint*10.5, i, dewpoint*10.5);

      popMatrix();

      // Metodo para el dato de MeanDew PointC

      pushMatrix();

      translate(width/2, height/2);
      stroke(90,176,160);
      strokeWeight(1);
      rotate(rot);
      ellipse(i, meandew*10.5, i, meandew*10.5);

      popMatrix();

      // Metodo para el dato de Min DewpointC

      pushMatrix();

      translate(width/2, height/2);
      stroke(107,196,204);
      strokeWeight(1);
      rotate(rot);
      ellipse(i, mindew*10.5, i, mindew*10.5);

      popMatrix();

    }
  }
}
