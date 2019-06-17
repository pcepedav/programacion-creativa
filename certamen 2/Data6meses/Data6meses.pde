

// Array de objetos de mi clase
Clase[] objetos;

// Objeto tabla para manejar la base de datos
Table tabla;

void setup() {
  // cargar la base de datos con el parámetro de cabecera
  // no es necesario la ruta /data, Processing lee por defecto
  tabla = loadTable("BaseDatosMeses.csv", "header");
  size(1000, 1000);
  // inicalizamos el array con la cantidad de filas del archivo
  int total = tabla.getRowCount(); //entrega el largo de la base de datos
  objetos = new Clase[total];


  // Iterar por la base de datos y llenar el array con esa información, creando un objeto por dato

  // Con un contador podemos pasar por cada fila del archivo
  for (int i = 0; i < tabla.getRowCount(); i++) {
    // Creamos un nuevo objeto del tipo TableRow con la información de cada fila
    TableRow row = tabla.getRow(i);

    // Con el, podemos ir a los métodos para hacer paridad entre el dato y el constructor    // La paridad debe ser exacta en caracteres
    // Una variable del constructor por cada variable del dato (que queramos)
    // En la base de datos del ejemplo son 4, pero acá se muestran 3
    String fecha = row.getString("PET");

    int temperatura = row.getInt("Max TemperatureC");
    int minima = row.getInt("Min TemperatureC");
    int dewpointc = row.getInt("Dew PointC");
    int meandewpointc = row.getInt("MeanDew PointC");
    int mindewpointc = row.getInt("Min DewpointC");
    int maxhumidity = row.getInt("Max Humidity");
    int meanhumidity = row.getInt(" Mean Humidity");
    int minhumidity = row.getInt(" Min Humidity");
    int maxsealevelpressure = row.getInt(" Max Sea Level PressurehPa");



    // Con esas variables construyo un objeto
    objetos[i] = new Clase(fecha, temperatura, minima, dewpointc, meandewpointc, mindewpointc, maxhumidity, meanhumidity, minhumidity, maxsealevelpressure);
  }
}
void draw() {
  noStroke();
  background(0);
  //colorMode(HSB);
  textSize(20);
  fill(255);
  text("Certamen 2 Programacion Creativa", 600, 50);
  // Uso de los objetos como siempre


  //objetos[i].minhumidity();
  //objetos[i].maxsealevelpressure();


  if (keyPressed) {
    if (key == 'b') { //mantener apretada para ver el resumen del año
      background(0)  ;
      for (int i = 0; i < objetos.length; i ++) {
        objetos[i].temperatura();
      }
    }
  }

  if (keyPressed) {
    if (key == 'c') { //mantener apretada para ver el resumen del año
      background(0)  ;
      for (int i = 0; i < objetos.length; i ++) {
        objetos[i].humidity();
      }
    }
  }
  if (keyPressed) {
    if (key == 'a') { //mantener apretada para ver el resumen del año
      background(0)  ;
      for (int i = 0; i < objetos.length; i ++) {
        objetos[i].dewpointc();

      }
    }
  }
}
