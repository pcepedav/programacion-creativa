// EL diseño de la clase debe tener atributos del mismo datatype que los de la base de datos
class Clase {
  String  Ano, Mes, Dia;
  int i;
  float x;
  float y;
  float maxima, minima, dewpointc, meandewpointc, mindewpointc, maxhumidity, meanhumidity, minhumidity, maxsealevelpressure;
  PVector pos, vel;
  float a;
  float b;
  float c;
  float d;
  float barOne;


  Clase(float x, float y, float a, float b, float c, float d, String Ano, String Mes, String Dia, float maxima, float minima, float dewpointc, float meandewpointc, float mindewpointc, float maxhumidity, float meanhumidity, float minhumidity, float maxsealevelpressure) {
    this.c=c;
    this.d=d;
    this.a = a;
    this.b = b;
    this.x = x;
    this.y = y;
    this.Ano = Ano;
    this.Mes = Mes;
    this.Dia = Dia;
    this.maxima = maxima;
    this.minima = minima;
    this.dewpointc = dewpointc;
    this.meandewpointc = meandewpointc;
    this.mindewpointc = mindewpointc;
    this.maxhumidity = maxhumidity;
    this.meanhumidity = meanhumidity;
    this.minhumidity = minhumidity;
    this.maxsealevelpressure = maxsealevelpressure;
  }

  void maxima() {
   fill(255, 20, 97, 99);
    rect(0, 0, barOne, maxima);
    stroke(255);
    barOne+=.05;
    if ( barOne > 2000) {
      barOne=0;
    }
  }

  void minima() {
    fill(255, 130, 25, 99);
    rotate(radians(13));
    rect(0, 10, barOne, minima);
    stroke(255);
    barOne+=.05;
    if ( barOne > 2000) {
      barOne=0;
    }
  }

  void dewpointc() {
    fill(255, 200, 25, 99);
    rect(0, 10, barOne, dewpointc);
    stroke(255);
    barOne+=.05;
    if ( barOne > 2000) {
      barOne=0;
    }
  }

  void meandewpointc() {
    fill(255, 20, 200, 99);
    rect(0, 10, barOne, mindewpointc);
    stroke(255);
    barOne+=.05;
    if ( barOne > 2000) {
      barOne=0;
    }
  }

  void mindewpointc() {
    fill(255, 20, 25, 99);
    rect(0, 10, barOne, mindewpointc);
    stroke(255);
    barOne+=.05;
    if ( barOne > 2000) {
      barOne=0;
    }
  }

  void maxhumidity() {
    fill(255, 150, 0, 99);
    rect(0, 250, barOne, maxhumidity);
    stroke(255);
    barOne+=.2;
    if ( barOne > 2000) {
      barOne=0;
    }
  }

  void meanhumidity() {

    fill(0, 255, 0, 75);
    rect(0, 300, barOne, meanhumidity);
    stroke(255);
    barOne+=.09;
    if ( barOne > 2000) {
      barOne=0;
    }
  }

  void minhumidity() {
    fill(0, 0, 255, 40);
     rotate(radians(13));
    rect(0, 300, barOne, minhumidity); 
    stroke(255);
    barOne+=.1;
    if ( barOne > 2000) {
      barOne=0;
    }
  }

  void maxsealevelpressure() {
    fill(86, 30, 255, 40);
    rect(0, 300, maxsealevelpressure, barOne); 
    stroke(255);
    barOne+=.9;
    if ( barOne > 1000) {
      barOne=0;
    }
  }
}
