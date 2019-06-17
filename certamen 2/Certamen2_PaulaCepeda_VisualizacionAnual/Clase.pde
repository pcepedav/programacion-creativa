class Clase {
  //Variables
  float radio;
  float y;
  int mes;
  int semestre;
  String evento;
  int dia;

  //Constructor
  Clase(int dia, int radio, int mes, int semestre, String evento) {
    this.radio=radio;
    this.mes=mes;
    this.evento=evento;
    this.semestre=semestre;
    this.dia=dia;
  }

  //Funcionalidad
  void colores() { //Funcion que define el color de la linea de las elipses
    stroke(255);
    strokeWeight(1);
    noFill();

    for (int d=0; d<tabla.getRowCount(); d++) {
      if (evento.equals("Rain")) {  //Si hubo lluvia ese dia, la linea sera celeste
        stroke(0, 159, 255); 
      } else if (evento.equals("Thunderstorm")) {  //Si hubo rayos ese dia, la linea sera amarilla
        stroke(255, 255, 0);
      } else if (evento.equals("Rain-Thunderstorm")) {  //Si hubo lluvia y rayos ese dia, la linea sera verde
        stroke(128, 211, 4);
      } else {
        stroke(255); //Si no hubo evento atmosféricos, las elipses serán de color blanco.
      }
      //line(mes,radio,mes+100,radio);
    }
  } 
  void mesesful() {
    rect(mes, semestre, radio, radio);  //funcion que crea los rectangulos agrupados por mes. Sus coordenadas dependen del mes, semestre, y su radio de la velocidad del viento
  }


  void totalano() {
    ellipse(mes, semestre, radio, radio); //funcion que crea los circulos agrupados por semana, mes y año.
  }
}
