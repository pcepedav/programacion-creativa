//Certamen 2 03/06/2019
//Ignacio Ffrench-davis

//representar en una primera escala los datos anuales y que se comparen varias categorias como temperatura minima, temperatura maxima , humedad minima , humedad maxima,
//punto de rocio minimo y punto de rocio maximo.
//Quize representar en una segunda escala la representacion por mes de los datos de visibilidad pero
//no logre solucionar el problema de keypress por lo que tuve que desactivar la segunda escala

// Array de objetos de mi clase
Clase[] objetos;

// Objeto tabla para manejar la base de datos
Table tabla;

void setup() {
  size (1000,1000);
  // base de datos
  tabla = loadTable("BaseDatos2015.csv", "header");


  int total = tabla.getRowCount(); //entrega el largo de la base de datos
  println(total);
  objetos = new Clase[365];

  // Iterar por la base de datos y llenar el array con esa información, creando un objeto por dato

  // Con un contador podemos pasar por cada fila del archivo
  for (int i = 0; i < tabla.getRowCount(); i++) {
    // Creamos un nuevo objeto del tipo TableRow con la información de cada fila
    TableRow row = tabla.getRow(i);

    // Con el, podemos ir a los métodos para hacer paridad entre el dato y el constructor
    // La paridad debe ser exacta en caracteres
    // Una variable del constructor por cada variable del dato (que queramos)

    int ano = row.getInt("A");
    int mes = row.getInt("M");
    int dia = row.getInt("D");
    int maxima = row.getInt("Max TemperatureC");
    int media = row.getInt("Mean TemperatureC");
    int minima = row.getInt("Min TemperatureC");
    int maxrocio = row.getInt("Dew PointC");
    int medrocio = row.getInt("MeanDew PointC");
    int minrocio = row.getInt("Min DewpointC");
    int maxhumedad = row.getInt("Max Humidity");
    int medhumedad = row.getInt("Mean Humidity");
    int minhumedad = row.getInt("Min Humidity");
    int maxpresion = row.getInt("Max Sea Level PressurehPa");
    int medpresion = row.getInt("Mean Sea Level PressurehPa");
    int minpresion = row.getInt("Min Sea Level PressurehPa");
    int maxvisibilidad =row.getInt("Max VisibilityKm");
    int medvisibilidad =row.getInt("Mean VisibilityKm");
    int minvisibilidad =row.getInt("Min Visibilitykm");
    int maxviento =row.getInt("Max Wind SpeedKm/h");
    int medviento =row.getInt("Mean Wind SpeedKm/h");
    int minviento =row.getInt("Max Gust SpeedKm/h");
    int nubes =row.getInt("CloudCover");
    int eventos =row.getInt("Events");
    int gradosviento =row.getInt("WindDirDegrees");

    objetos[i] = new Clase(ano,mes,dia, media, maxima, minima, maxrocio, medrocio, minrocio, maxhumedad, i,
    medhumedad, minhumedad, maxpresion, medpresion, minpresion, maxvisibilidad, medvisibilidad,
    minvisibilidad, maxviento, medviento, minviento, nubes, eventos, gradosviento);
  }
}

void draw() {
  background(50);
  // Uso de los objetos como siempre
  //representacion anual de los datos
  //temperatura minima va por delante de la temperatura maxima
  for (int i = 0; i < objetos.length; i ++) {
    objetos[i].temperaturamax();
    objetos[i].temperaturamin();

  }
  for (int i = 0; i < objetos.length; i ++) {
    objetos[i].rocio();
    objetos[i].humedad();
  }
  //Representacion por meses
  //**Lo tuve que desactivar ya que no logre solucionar el problema del keypress**
  //rango entre los cuales tomara los datos para representar un solo mes

  /*
  for (int i = 0; i < objetos.length; i ++) {
     if (i >=2 && i<= 32){
      objetos[i].enero();
    }
    if (i >=33 && i<= 60){
      objetos[i].febrero();
    }
     if (i >=61 && i<= 91){
      objetos[i].marzo();
    }
     if (i >=92 && i<= 121){
      objetos[i].abril();
    }
     if (i >=122 && i<= 152){
      objetos[i].mayo();
    }
     if (i >=153 && i<= 182){
      objetos[i].junio();
    }
     if (i >=183 && i<= 213){
      objetos[i].julio();
    }
     if (i >=214 && i<= 244){
      objetos[i].agosto();
    }
     if (i >=245 && i<= 274){
      objetos[i].septiembre();
    }
     if (i >=275 && i<= 305){
      objetos[i].octubre();
    }
     if (i >=306 && i<= 335){
      objetos[i].noviembre();
    }
    if (i >=336 && i<= 366){
      objetos[i].diciembre();
    }

  }*/

 /* void keyPressed() {
 if (key == 'z') {
 objetos[1].temperaturamax();
 objetos[1].temperaturamin();
 objetos[i].rocio();
 objetos[i].humedad();
 }
 else if (key == 'x') {
 objetos[i].enero();
 objetos[i].febrero();
 objetos[i].marzo();
 objetos[i].abril();
 objetos[i].mayo();
 objetos[i].junio();
 objetos[i].julio();
 objetos[i].agosto();
 objetos[i].septiembre();
 objetos[i].octubre();
 objetos[i].noviembre();
 objetos[i].diciembre();
 }
*/
 }
