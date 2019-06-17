//En este certamen se están utilizando los valores de velocidad máxima y media del viento
PImage img;
int i;
String csv[];
String Data[][];  //Se define un array 2D con los datos, estos nos permitirán sacar coordenadas en el canvas [fila][columna
int m = 100; //definimos un valor para generar un margen en el canvas y permitir un a correcta visualización.s


void setup() {
  size(800, 600);
  img = loadImage("fondo.jpg");
  noLoop();
  csv = loadStrings ("baseDatos2015.csv");
  Data = new String[csv.length][23]; //definimos el tamaño de la data y la cantidad de columnas que queremos que nos lea del archivo []
  for (int i=0; i<csv.length; i++) {
    Data[i] = csv[i].split(","); //se separan los datos individualmente gracias a la coma
  }
}


void draw() {
  background(255);
  image (img,0,0);
  for (int i = 0; i < Data.length; i++) {
    float ejex = map(float(Data[i/12][16]), 0, 150, 0, width-m); //se divide el valor de i por 12 para así poder acceder a los valores de un mes.
    float ejey= map(float(Data[i/12][17]), 0, 42, 0, height);
    float gradosViento = map(float(Data[i/12][22]), 0, 150, 0, 20 );

    noStroke();
    fill(0, 0, gradosViento, 20);
    stroke(0, 150, 100);
    line(ejex, i, ejey, i);
    println(Data[i/12][17]);
  }
}
