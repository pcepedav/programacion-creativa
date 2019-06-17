/*
Certamen 2 - Programación creativa
Profesor: Nicolás Troncoso
Alumno: Pedro Pablo Manasevich Atal

Objetivo:
El objetivo para este codigo fue poder visualizar los cambios de Temperatura
y Humedad durante un año, los primeros 6 meses y los ultimos 6 meses.

Para esto utilice la Maxima de ambas variables para poder posicionarlas,
luego utilice la maxima y minima para definir el ancho y el alto de la
ellipse, posterior a eso le asigne un color para poder diferenciar el cambio de día,
debido a la gran similitud en los valores me vi obligado a multiplicar los valores
para lograr un resultado llamativo.


*El paso del tiempo provoca que el circulo crezca.*

*Los valores podrian verse afectados*

*La funcion para ver 1º o 2º mitad de año solo funciona al inicio del sketch*

Usar teclas:
1º 6 meses: Q
2º 6 meses: W
Detiene el sketch: A
Reanuda el sketch: S
Captura de pantalla: C


*/


// Array de objetos de mi clase
Clase[] objetos;

// Objeto tabla para manejar la base de datos
Table tabla;



void setup() {
  // frameRate(1);

  size(900,900);
  background(255);

  // cargar la base de datos con el parámetro de cabecera
  // no es necesario la ruta /data, Processing lee por defecto
  tabla = loadTable("data6.csv", "header");

  // inicalizamos el array con la cantidad de filas del archivo
  int total = tabla.getRowCount();//total = largo base
   //entrega el largo de la base de datos y lo guarda como "total"
  objetos = new Clase[total];


  // lo mismo se puede escribir en una línea de código
  objetos = new Clase[tabla.getRowCount()];

  // Iterar por la base de datos y llenar el array con esa información, creando un objeto por dato

  // Con un contador podemos pasar por cada fila del archivo
  for (int i = 0; i < tabla.getRowCount(); i++) {
	// Creamos un nuevo objeto del tipo TableRow con la información de cada fila
  TableRow row = tabla.getRow(i);


    String fecha = row.getString("AST");

    int maximaT = row.getInt("Max TemperatureC");
    int minimaT = row.getInt("Min TemperatureC");
    int maximaH = row.getInt("Max Humidity");
    int minimaH = row.getInt(" Min Humidity");


    // Con esas variables construyo un objeto
    objetos[i] = new Clase(fecha,maximaT, minimaT,maximaH, minimaH);


  }

}

void draw() {

	 for (int i = 0; i < objetos.length; i ++) { //objetos.length=365
	  objetos[i].funcion(i);
}
}
void keyPressed() {


  if (key == 'q' || key == 'Q') { //muestra solo 6 meses 1º
    background(255);
    for (int i = 0; i < 182; i ++) { //objetos.length=182
      objetos[i].funcion(i);}
  if (key == 'w' || key == 'W') { //muestra solo 6 meses 2º
    background(255);
    for (int i = 182; i < 365; i ++) { //objetos.length=182
      objetos[i].funcion(i);}

  if (key == 'c' || key == 'C') { //pantallazo
    saveFrame("pantallazo-######.png");
  }
  if (key == 'a' || key == 'A') { //detiene el sketch
    noLoop();
  }
  if (key == 's' || key == 'S') { //reanuda el sketch
    loop();
  }
}
}
}
