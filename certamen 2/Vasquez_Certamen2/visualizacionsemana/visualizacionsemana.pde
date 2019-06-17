PImage img;
int i;
String csv[];
String Data[][];
int m = 100;


void setup() {
  size(800, 600);
  img = loadImage("fondo.jpg");
  noLoop();
  csv = loadStrings ("baseDatos2015.csv");
  Data = new String[csv.length][23];
  for (int i=0; i<csv.length; i++) {
    Data[i] = csv[i].split(",");
  }

}


void draw() {
  background(255);
  image(img,0,0);
  for (int i = 0; i < Data.length; i++) {
    float ejex = map(float(Data[i/52][16]), 0, 138, 0, width-m);  //ahora dividimos el valor de i en 52 para finalmente poder visualizar la data de 1 semana
    float ejey = map(float(Data[i/52][17]), 0, 42, 0, height-m);
    float gradosViento = map(float(Data[i/52][22]), 0, 150, 0, 100 );
    float humMinima = map(float(Data[1][9]), 0,74, 0, 100);

    fill(0, 150, 100); //el stroke permite diferenciar una figura de la otra.
    rect(ejex, ejey, gradosViento, humMinima);
    println(Data[i][9]);
  }
}
