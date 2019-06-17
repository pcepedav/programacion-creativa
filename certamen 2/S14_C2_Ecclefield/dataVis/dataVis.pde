/*
Nombre: Juan Ecclefield
Asignatura: Programación Creativa
Profesor: Nicolás Troncoso
Fecha: 03-06-2019

DESCRIPCIÓN:

  En esta visualización se pretende mostrar las variaciones de velocidad del viento y
  la variación de la visibilidad, donde además se suma la presencia de los eventos climáticos
  que ocurrieron en 2015, todo con el objetivo de prevenir a un posible usuario de una aerolínea
  para que revise cuando le conviene más viajar a esta zona. Se consideran estos tres
  ámbitos (Visibilidad, Viento y Eventos) porque son los principales causantes de accidentes
  aéreos y complicaciones al minuto de viajar, sobre todo en un aterrizaje.

  Se muestran 3 niveles de información diferentes para que el usuario pueda navegar y ver
  información específica que es relevante al minuto de planificar un viaje a esta zona.
  La primera es una visualización general de todos los días del año, la segunda es una
  visualización por meses y la tercera es por semanas.

INSTRUCCIONES:

  - Tecla 1: Para visualización general. (Anual)
  - Tecla 2: Para visualización Mensual.
           - Apretando las flechas del teclado (izquierda/derecha) se avanza y se retrocede.
  - Tecla 3: Para visualización semanal.
           - Apretando las teclas A y D (izquierda/derecha) se avanza y se retrocede.

*/




///////////////////////////////// NOMENCLATURA  ///////////////////////////////////
/*
  Nada = 20;
  fog = 20;
  Rain = 50;
  Rain-Thunderstorm = 150;
  Thunderstorm-Tornado = 255;
  Thunderstorm = 100;
  Fog-Rain-Thunderstorm = 200;
*/

///////////////////////////////////////////////////////////////////////////////////
ClassDataVis[] objetos, etiqueta;

// TABLAS
Table tabla;

// IMAGENES
PImage flechas;
PImage senalIteracion;
PImage portada;

// FUENTES
PFont raleway;        // h1    Titulo
PFont ralewayBold;    // h2    Subtitulo
PFont raleway35;      // h2    Subtitulo tercera visualizacion
PFont Cabin24;        // h3    Extracto
PFont Cabin15;        // p     Párrafo

// BOOLEANAS DE DISPLAY
boolean displayAnual = false;
boolean displayMensual = false;
boolean displaySemanas = false;
boolean portadaI = true;
boolean mensual;


// VARIABLES RANGO ITERACIONES
int principioMes = 0;
int finalMes = 30;
int principioSem = 1;
int finalSem = 7;

int rangoMes = 0;
int rangoSem = 0;

// VARIABLES
float eventoStroke;


void setup( ) {

  // Se cargan las imagenes y se asignan a un PImage.
  flechas = loadImage("izqDer.png");
  senalIteracion = loadImage("ad.png");
  portada = loadImage("portada.png");

  // Se cargan las "Custom Fonts" y se asignan a un PFont.
  raleway = loadFont("Raleway-Black-60.vlw");
  ralewayBold = loadFont("ralB50.vlw");
  raleway35 = loadFont("Ral35.vlw");
  Cabin24 = loadFont("CabMed24.vlw");
  Cabin15 = loadFont("CabMed15.vlw");

  // Se declara el estado inicial de los Booleans, que determinan lo que se esta mostrando en el sketch.
  portadaI = true;
  displayAnual = false;
  displaySemanas = false;
  displayMensual = false;

  size(800,800);

  // Inicio de los rangos.
  rangoMes = 1;
  rangoSem = 1;

  // Se define la tabla que vamos a usar y se asgina a la tabla "tabla".
  tabla = loadTable("baseDatos2015ConStrings.csv", "header");
  int total = tabla.getRowCount();

  // Se llaman los objetos
  objetos = new ClassDataVis[total];
  objetos = new ClassDataVis[tabla.getRowCount()];

  // Loop que itera y cuenta las columnas para crear variables por columnas.
  for (int i = 0; i < tabla.getRowCount(); i++) {
    TableRow row = tabla.getRow(i);
    String mes = row.getString("mesString");   // Para imprimir los textos según el mes en el que se este iterando.
    int dias = row.getInt("D");
    int diaP = row.getInt("D");
    int meses = row.getInt("M");
    int maxima = row.getInt("maxTemp");
    int maximaColor = row.getInt("maxTemp");
    int minima = row.getInt("minTemp");
    int evento = row.getInt("Events");
    int visibilidad = row.getInt("MaxVisibilityKm");
    int visibilidadMin = row.getInt("MinVisibilitykM");
    int visibilidadColor = row.getInt("MaxVisibilityKm");
    int velocidadViento = row.getInt("MaxWindSpeedKmh");
    int velocidadVientoMin = row.getInt("MeanWindSpeedKm/h");
    int velocidadVientoMinTam = row.getInt("MeanWindSpeedKm/h");
    int rafaga = row.getInt("MaxGustSpeedKmh");
    int arc_PI = row.getInt("MaxWindSpeedKmh");

    // Se llama al constructor de la clase.
    objetos[i] = new ClassDataVis(dias,meses, maxima,
                                  minima, mes, diaP,
                                  maximaColor, evento, eventoStroke,
                                  visibilidad, velocidadViento, rafaga,
                                  arc_PI, visibilidadMin, velocidadVientoMin,
                                  visibilidadColor, velocidadVientoMinTam);
  }

}

void draw() {

	 background(200,200,255);

  /////////////////////////////////////////////////////////////////////////////////
  /////////////////////////////// RANGO E ITERACIONES TABLE ///////////////////////
  /////////////////////////////////////////////////////////////////////////////////

  // MESES
  if (rangoMes == 1) {principioMes = 1; finalMes = 31;}
  if (rangoMes == 2) {principioMes = 32; finalMes = 59;}
  if (rangoMes == 3) {principioMes = 62; finalMes = 93;}
  if (rangoMes == 4) {principioMes = 94; finalMes = 124;}
  if (rangoMes == 5) {principioMes = 125; finalMes = 156;}
  if (rangoMes == 6) {principioMes = 157; finalMes = 187;}
  if (rangoMes == 7) {principioMes = 188; finalMes = 219;}
  if (rangoMes == 8) {principioMes = 220; finalMes = 251;}
  if (rangoMes == 9) {principioMes = 252; finalMes = 282;}
  if (rangoMes == 10) {principioMes = 283; finalMes = 314;}
  if (rangoMes == 11) {principioMes = 315; finalMes = 345;}
  if (rangoMes == 12) {principioMes = 346; finalMes = 364;}

  //  SEMANAS
  if (rangoSem == 1) {principioSem = 1; finalSem = 7;}
  if (rangoSem == 2) {principioSem = 8; finalSem = 15;}
  if (rangoSem == 3) {principioSem = 16; finalSem = 23;}
  if (rangoSem == 4) {principioSem = 24; finalSem = 31;}
  if (rangoSem == 5) {principioSem = 32; finalSem = 39;}
  if (rangoSem == 6) {principioSem = 40; finalSem = 47;}
  if (rangoSem == 7) {principioSem = 48; finalSem = 55;}
  if (rangoSem == 8) {principioSem = 56; finalSem = 63;}
  if (rangoSem == 9) {principioSem = 64; finalSem = 71;}
  if (rangoSem == 10) {principioSem = 72; finalSem = 79;}
  if (rangoSem == 11) {principioSem = 80; finalSem = 87;}
  if (rangoSem == 12) {principioSem = 88; finalSem = 95;}
  if (rangoSem == 13) {principioSem = 96; finalSem = 103;}
  if (rangoSem == 14) {principioSem = 104; finalSem = 111;}
  if (rangoSem == 15) {principioSem = 112; finalSem = 119;}
  if (rangoSem == 16) {principioSem = 120; finalSem = 127;}
  if (rangoSem == 17) {principioSem = 128; finalSem = 135;}
  if (rangoSem == 18) {principioSem = 136; finalSem = 143;}
  if (rangoSem == 19) {principioSem = 144; finalSem = 151;}
  if (rangoSem == 20) {principioSem = 152; finalSem = 159;}
  if (rangoSem == 21) {principioSem = 160; finalSem = 167;}
  if (rangoSem == 22) {principioSem = 174; finalSem = 181;}
  if (rangoSem == 23) {principioSem = 182; finalSem = 189;}
  if (rangoSem == 24) {principioSem = 190; finalSem = 197;}
  if (rangoSem == 25) {principioSem = 198; finalSem = 205;}
  if (rangoSem == 26) {principioSem = 206; finalSem = 213;}
  if (rangoSem == 27) {principioSem = 214; finalSem = 221;}
  if (rangoSem == 28) {principioSem = 222; finalSem = 229;}
  if (rangoSem == 29) {principioSem = 230; finalSem = 237;}
  if (rangoSem == 30) {principioSem = 236; finalSem = 243;}
  if (rangoSem == 31) {principioSem = 250; finalSem = 257;}
  if (rangoSem == 32) {principioSem = 258; finalSem = 265;}
  if (rangoSem == 33) {principioSem = 266; finalSem = 273;}
  if (rangoSem == 34) {principioSem = 274; finalSem = 281;}
  if (rangoSem == 35) {principioSem = 282; finalSem = 289;}
  if (rangoSem == 36) {principioSem = 290; finalSem = 297;}
  if (rangoSem == 37) {principioSem = 298; finalSem = 305;}
  if (rangoSem == 38) {principioSem = 306; finalSem = 313;}
  if (rangoSem == 39) {principioSem = 314; finalSem = 321;}
  if (rangoSem == 40) {principioSem = 322; finalSem = 329;}
  if (rangoSem == 41) {principioSem = 330; finalSem = 337;}
  if (rangoSem == 42) {principioSem = 338; finalSem = 345;}
  if (rangoSem == 43) {principioSem = 346; finalSem = 353;}
  if (rangoSem == 44) {principioSem = 354; finalSem = 361;}
  if (rangoSem == 45) {principioSem = 362; finalSem = 364;}

  /////////////////////////////////////////////////////////////////////////////////
  /////////////////////////////// VARIABLES Y CONDICIONES /////////////////////////
  /////////////////////////////////////////////////////////////////////////////////

  // DISPLAY DE PORTADA (Condición)
  if (portadaI == true) {
    portada();
    leyenda();
  }

  // DISPLAY GENERAL (Condición)
  if (displayAnual == true) {
    background(200,200,255);
    visualizacionGeneral();
    leyenda();
  }

  // DISPLAY MENSUAL (Condición)
  if (displayMensual == true) {
    background(0);
    visualizacionMensual();
    leyenda();
  }

  // DISPLAY SEMANAL (Condición)
  if(displaySemanas == true){
    background(255);
    VisualizacionSemana();
    leyenda();
  }
}

/////////////////////////////////////////////////////////////////////////////////
/////////////////////////////// INTERACCIONES ///////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////

  void keyPressed() {
    // RETROCEDER UN MES + LIMITE
    if (keyCode == LEFT) {
      if (rangoMes <= 1) {
        rangoMes = 12;
      } else {
        rangoMes--;
      }
    }

    // AVANZAR UN MES + LIMITE
    if (keyCode == RIGHT) {
      if (rangoMes >= 12) {
        rangoMes = 1;
      } else {
        rangoMes++;
      }
    }

    // RETROCEDER UNA SEMANA + LIMITE
    if (key == 'a') {
      if (rangoSem <= 1) {
        rangoSem = 45;
      } else {
        rangoSem--;
      }
    }

    // AVANZAR UNA SEMANA + LIMITE
    if (key == 'd') {
      if (rangoSem >= 45) {
        rangoSem = 1;
      } else {
        rangoSem++;
      }
    }

    // CONDICIONES DE VISUALIZACIÓN POR TECLAS

    if (key == '1') {
      displayAnual = true;
      displayMensual = false;
      displaySemanas = false;
    }

    if (key == '2') {
      displayMensual = true;
      displayAnual = false;
      displaySemanas = false;
    }

    if (key == '3') {
      displaySemanas = true;
      displayMensual = false;
      displayAnual = false;

    }

}

// DISPLAY GENERAL: Se itera sobre la totalidad de los datos, recogiendo y visualizando todos los días del año.

void visualizacionGeneral() {
  for (int i = 0; i < objetos.length; i ++) {
     pushMatrix();
      objetos[i].diagramacion(i);
     popMatrix();
   }
}

// DISPLAY MENSUAL: Se itera sobre la totalidad de los datos, pero solo
// se recoge lo que delimitan los rangos (principioMes/finalMes)recogiendo y
// visualizando todos los días del año.

void visualizacionMensual(){
  int k = principioMes;
  for (int i = (width/finalMes-principioMes); i < width-10; i+=width/(finalMes-principioMes)) {
    objetos[k].diagramacionMensual(i, principioMes);
    k++;
    if (k > finalMes){ k = principioMes;}
  }
}

// DISPLAY SEMANAL: Se itera sobre la totalidad de los datos, pero solo
// se recoge lo que delimitan los rangos (principioSem/finalSem)recogiendo y
// visualizando todos los días del año.

void VisualizacionSemana(){
  int l = principioSem;     // Variable que toma el valor del rango y que puede cambiar segun lo que se quiere iterar.
  for (int i = (finalSem-1-principioSem); i < 50; i+=(finalSem-principioSem)) {
    objetos[l].diagramacionSemana(i, principioSem);
    l++;
    if (l > finalSem){ l = principioSem;}
  }
}

// INSTRUCCIONES QUE SE MUESTRAN EN LA PARTE SUPERIOR DEL SKETCH
void leyenda(){
  fill(150,150,200);
  textFont(Cabin15);
  textAlign(LEFT);
  text("Escala general = Tecla 1",100,10,200,50);
  text("Escala Mensual = Tecla 2",300,10,200,50);
  text("Escala Semanal = Tecla 3",500,10,200,50);
}

// PORTADA QUE CARGA LA IMAGEN PARA EL INICIO DEL SKETCH
void portada(){
  image(portada,0,0,width,height);
}
