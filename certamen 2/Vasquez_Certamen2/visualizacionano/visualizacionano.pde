//Nombre: Renata Vásquez
//Fecha: 03/05/2019
//En este certamen se están utilizando los valores de velocidad máxima y media del viento

PImage img;
int i;
String csv[]; //se declara el string de la base de datos
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
  image(img, 0, 0);


  for (int i = 0; i < Data.length; i++) { //Se declara el forloop con la longitud de los datos
    //Ocurre un mapeo de los datos de para convertirlos en coordenadas del canvas
    float ejex = map(float(Data[i][16]), 0, 150, 0, width-m); //el número [16] indica la lectura de la columna número 17 (máximas de viento) y el 150 el número más alto dentro las máximas. m es un valor de margen asignado para que la visuzalización quedase más centrada y fuera más fácil de visualizar.
    float ejey = map(float(Data[i][17]), 0, 42, 0, height-m); //el número [17] indica la lectura de la columna número 18 (medias de viento) y el 42 la máxima de la media de viento registrado.
    // println(largoGrafico + " + " + anchoGrafico); // i utiliza la columna entera

    //ahora asignaremos tamaños a las elipses según los grados del viento que hubo en dicho día , de igual manera que antes
    float gradosViento = map(float(Data[i][22]), 0, 150, 0, 20 ); // el numero [22] indica la lectura de la columna correspondiente a los datos de los ángulos del viento regisrados. Se mapean los valores de los grados del viento en números más pequeños para permitir una mejor visualización de ellos. El 30 funciona como valor de escala referencial.

    noStroke();
    fill(0, 150, 100, 50); //la opacidad nos permite contemplar lugares donde se acumulan más los datos.
    ellipse(ejex, ejey, gradosViento, gradosViento); //la ellipse termina finalmente posicionandose y creciendo según los datos del dataset extraídos.
  }
}
