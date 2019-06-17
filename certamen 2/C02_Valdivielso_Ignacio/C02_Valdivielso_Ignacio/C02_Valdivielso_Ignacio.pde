// Array de objetos de mi clase
Clase[] objetos;
// Objeto tabla para manejar la base de datos
Table tabla;

void setup() {
  size(1400, 900);
  // cargar la base de datos con el parámetro de cabecera
  // no es necesario la ruta /data, Processing lee por defecto
  tabla = loadTable("baseDatos2015.csv", "header");

  // inicalizamos el array con la cantidad de filas del archivo
  int total = tabla.getRowCount(); //entrega el largo de la base de datos
  objetos = new Clase[total];

  // lo mismo se puede escribir en una línea de código
  objetos = new Clase[tabla.getRowCount()]; 

  // Iterar por la base de datos y llenar el array con esa información, creando un objeto por dato

  // Con un contador podemos pasar por cada fila del archivo
  for (int i = 0; i < tabla.getRowCount(); i++) {
    // Creamos un nuevo objeto del tipo TableRow con la información de cada fila
    TableRow row = tabla.getRow(i);

    // Con el, podemos ir a los métodos para hacer paridad entre el dato y el constructor    // La paridad debe ser exacta en caracteres
    // Una variable del constructor por cada variable del dato (que queramos)
    // En la base de datos del ejemplo son 4, pero acá se muestran 3
    String AST = row.getString("AST");//Fechas (Textos)
    String evento = row.getString(" Events");//Eventos (Textos)
    int maximat = row.getInt("Max TemperatureC");//Medición de la Temperatura Maxima
    int mediat = row.getInt("Mean TemperatureC");//Medición de la Temperatura Minima
    int minimat = row.getInt("Min TemperatureC");//Medición de la Temperatura Media
    int presipi = row.getInt("Precipitationmm");//Medición de la Presipitación

    // Con esas variables construyo un objeto
    objetos[i] = new Clase(AST, evento, maximat, mediat, minimat, i, presipi);
  }
}
void draw() {
  background(0, 0, 40);
  smooth();
  // Uso de los objetos como siempre
  for (int i = 0; i < objetos.length; i++) {

    //====================Metodos Visualización Temperaturas (1ra Visualización)====================//
    if (key=='q') {//asignación de tecla para llamar la primera visualización
      objetos[i].medperi();//Indica los periodos por meses
      objetos[i].templinea(); //liena que mide el parametro de la temperatura
      objetos[i].pmax();//Punto que marca la tempertura maxima
      objetos[i].pmedio(); //Punto que mide la minima de teperatura
      objetos[i].pmin();//Punto que marca la tempertura minima
      objetos[i].medicion();//Mide los parametros de temperatura para entregar un valor numerico por anillo
      objetos[i].presipitacion();//lineas que miden el nivel de presipitación*/
      objetos[i].textostemp();//info de la visualización
      objetos[i].textostemp2();//leyenda
    } else  if (key=='w') {  //====================Metodos Visualización Niveles de Presión del Mar (2da Visualización)====================////asignación de tecla para llamar la segunda visualización
      objetos[i].textosmar();//info de la visualización
      objetos[i].textosmar2();//leyenda
      objetos[i].presMax();//Linea que recorre los puntos maximos de presión
      objetos[i].presMaxp();//Puntos que indican la maxima de presión
      //objetos[i].presMin();
      objetos[i].presMin2();//Linea que recorre los puntos minimos de la presión
      objetos[i].presMinp();//Puntos que indican la minima de presión
      objetos[i].presMedi();//Linea que recorre los puntos medios de la presión
      objetos[i].presMedip();//Puntos que indican la media de presión
      //objetos[i].mini(); //
      //objetos[i].evento(); //Punto que da a conocer el evento que ocurrio ese día (Lluvia, neblina, etc.)
      //objetos[i].funcionmin()*/
    } else {//si no es llamada ninguna visualización, esta sera la que aparesca al correr el codigo
      objetos[i].Textoinicial();//texto inicial
      pushMatrix();
      textSize(70);
      translate(width/2, height/2);
      text("Certamen 2", -150, 0);
      text("Ignacio Valdivielso", -260, 70);
      text("Visualización de datos", -330, 140);
      popMatrix();
    }
  }
}
