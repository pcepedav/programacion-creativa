/*
Certamen 2- Cristóbal Schaerer
En el sketch aparecen tres formas
de ver datos:

con la tecla 1 se visualiza la primera exploración, la cual muestra ambos semestres,
muestra las temperaturas máximas y mínimas en forma de líneas y en circulos se representa la media de humedad.
al apretar la barra espacio se va añadiendo dato por dato.

con la tecla 2 se ve la segunda, que muestra el promedio mensual de la media de rocío, se pueden visualizar los 12 meses al mismo tiempo.

con la tecla 3 se ve la tercera, que muestra por medio de movimiento la velocidad del viento.
con la tecla x se elevan las elipses y luego son arrastradas por el viento de cada día.(visualización por días), se navega con la tecla b.
*/
Figura[] f;//array de objetos de la clase
float n, n2, m = 0;
int z = 0, index, index1;
Table tabla;//Objeto tabla para manejar Base de datos
boolean semestral = false;
boolean mensual = false;
boolean diario = false;

void setup(){
  size(1000,600);

  //carga de datos de la base de datos con la cabezera
  tabla = loadTable("baseDatos2015.csv", "header");

  // inicalizamos el array con  cantidad de filas del archivo
  int total = tabla.getRowCount(); //largo de la base
  f = new Figura[total];

  // Con un contador podemos pasar por cada fila del archivo
  for (int i = 0; i < total; i++) {
	// Creamos un  objeto de tipo TableRow con la información de cada fila
    TableRow row = tabla.getRow(i);

    int year = row.getInt("A");
    int mes = row.getInt("M");
    int dia = row.getInt("D");
       float maxima = row.getInt("Max TemperatureC");
       float minima = row.getInt("Min TemperatureC");
       float media = row.getInt("Mean TemperatureC");
       float medioviento = row.getInt("Mean Wind");
       float mediorocio = row.getInt("MeanDew PointC");
       float humedadmed = row.getInt("Mean Humidity");
       float winddir = row.getInt("WindDirDegrees");

       // Con esas variables construyo un objeto
       f[i] = new Figura(year, mes, dia, maxima, minima, media, medioviento, mediorocio, humedadmed, winddir);
     }
}
void draw() {
background(255);//Fondo blanco
  if(semestral == true ){//Visualización Semestre
    pushMatrix();
    fill(0, 0, 0, 50);
    textSize(20);
    text("Barra Espacio para añadir datos", 20, 20);
          n=map(m, 0, width, 0, 364);
          n2 = constrain(n,0,365);
    	     for (int i = 0; i < n2; i++) {
             f[i].tmax(i);
             f[i].tmin(i);
             f[i].hum(i);
             f[i].textsem();
           }
    popMatrix();
  }else if(mensual == true){//Visualización meses
    f[index1].rocio(index1);
  }else if(diario == true){//Visualizacion días
    f[index].vientomov(z);
  }else {
    pushMatrix();
      fill(0);
      textSize(70);
      text("Certamen 2", 290, height/3);
      textSize(30);
      text("Cristóbal Schaerer", 300, 250);
      textSize(20);
      text("Tecla 1 = Semestral | Tecla 2 = Mensual | Tecla 3 = Diaria", 200, 400);
    popMatrix();
  }
}//cierre del draw

void keyPressed(){
  if(key == '1'){semestral = !semestral;}
  if(key == '2'){mensual = !mensual;}
  if(key == '3'){diario = !diario;}
  if(key == ' '){m +=4;}
  if(key == 'x'){z=1;}
  if(key == 'n'){index = 1;} else if(key == 'b'){	if(index >= 364) {
        index = 0;
    } else {//if(index < 180){
        index++;
    }
  }
  if(key == 'v'){index1 = 1;} else if(keyCode == RIGHT){	if(index1 >= 364) {
        index1 = 0;
    } else {//if(index < 180){
        index1++;
    }
  }
}//Cierre keyPressed
