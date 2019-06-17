Clase[] objetos;

Table tabla;

void setup() {
  background(50);
  tabla=loadTable("data.csv", "header");

  size(1000, 1000);
  // inicalizamos el array con la cantidad de filas del archivo
  int total = tabla.getRowCount(); //entrega el largo de la base de datos
  objetos = new Clase[total];

  // Iterar por la base de datos y llenar el array con esa información, creando un objeto por dato

  // Con un contador podemos pasar por cada fila del archivo
  for (int i = 0; i < tabla.getRowCount(); i++) {
    // Creamos un nuevo objeto del tipo TableRow con la información de cada fila
    TableRow row = tabla.getRow(i);


    String Ano = row.getString("A");
    String Mes = row.getString("M");
    String Dia = row.getString("D");

    int maxima = row.getInt("Max TemperatureC");
    int minima = row.getInt("Min TemperatureC");
    int dewpointc = row.getInt("Dew PointC");
    int meandewpointc = row.getInt("MeanDew PointC");
    int mindewpointc = row.getInt("Min DewpointC");
    int maxhumidity = row.getInt("Max Humidity");
    int meanhumidity = row.getInt(" Mean Humidity");
    int minhumidity = row.getInt(" Min Humidity");
    int maxsealevelpressure = row.getInt(" Max Sea Level PressurehPa");

    float x = width/2;
    float y = height/2;
    float a = i*5;
    ;
    float b = 500;
    float c = i*5;
    float d = 750;

    // Con esas variables construyo un objeto
    objetos[i] = new Clase(a, b, c, d, x, y, ano, mes, dia, maxima, minima, dewpointc, meandewpointc, mindewpointc, maxhumidity, meanhumidity, minhumidity, maxsealevelpressure);
  }
}
void draw() {
  //translate(500, 500);
  //rectMode(CENTER);
  translate(width/2, height/2);
  noStroke();
  background(250);


  // Uso de los objetos como siempre
  for (int i = 0; i < objetos.length; i ++) {


    objetos[i].maxhumidity();
    objetos[i].meanhumidity();
    objetos[i].minhumidity();

  }
}
