class OndaClase {

  int x; //posición x
  int y; //posición y
  float p;


  OndaClase(int x, int y) {

    this.x = x;
    this.y = y;
    this.p = p; // esto no es posible ya que no hay variable p local

  }

/*
Los bloques de código sirven para poder escribir más de una línea.
*/


  //EN LA FUNCION DEL RECTANGULO, X REPRESENTA LA POSICIÓN
  //DE LA FIGURA EN EL EJE X, Y REPRESENTA LA POSICIÓN DE LA
  //FIGURA EN EL EJE Y, Y A ESA POSICIÓN SE LE SUMA EL SENO O
  //EL COSENO DE LA VARIABLE P, LA CUAL ES UNA VARIABLE FLOTANTE
  //A LA QUE SE LE ASIGNA EL VALOR DE LA CANTIDAD DE PUNTOS
  //EN LOS QUE SE VA A MOVER LA FIGURA, EN OTRAS PALABRAS
  //ES LA VELOCIDAD EN LA QUE LA FIGURA SE VA A DESPLAZAR
  //EL SENO O COSENO DE LA VARIABLE P SE MULTIPLICA POR 50,
  //QUE ES EL RANGO EN EL QUE SE DESPLAZA LA FIGURA, EN ESTE
  //CASO 50 HACIA ARRIBA Y 50 HACIA ABAJO.
  //DESPUÉS DE LA VARIABLE Y, VIENE EL WIDTH QUE ES EL ANCHO DE LA
  //FIGURA Y EL HEIGHT, QUE ES EL ALTO DE LA FIGURA.
  //A DEMÁS DE LAS CUATRO VARIABLES BÁSICAS DE LA FUNCIÓN
  //DE UN RECTANGULO, SE LE AGREGÁRON CUATRO VARIABLES
  //MÁS QUE SON PARA DARLE UN RÁDIO A LOS VERTICES DEL RECTANGULO
  //LOGRANDO ASÍ QUE EL RECTANGULO QUEDE CON SUS VERTICES
  //CIRCULARES.

// ES IMPORTANTE QUE LOS COLORES DE LAS FIGURAS ENTEN DENTRO DE LOS METODOS

  //METODO 1: MOVIMIENTO DE ACUERDO AL SENO
  void seno(int x, int y, float p) {
    rectMode(CENTER);
    stroke(255);
    rect(x, y + sin(p) * 50, 50, 150, 25, 25, 25, 25);

  }

  //METODO 2: MOVIMIENTO SEGUN EL COSENO
  void coseno(int x, int y, float p) {
    rectMode(CENTER);
    stroke(255);
    rect(x, y + cos(p) * 50, 50, 150, 25, 25, 25, 25);

  }


}