
// Se declara la clase.
class ClassDataVis{

  // Variables de la clase que seran representadas por los valores de la tabla.
  float dias,anos,meses,diaP;
  String dia, ano, mes;
  float maxima, minima;
  float x, y;
  float maximaColor;
  float evento;
  float eventoStroke;
  float visibilidad;              // Visibilidad Máxima
  float visibilidadMin;           // Visibilidad mínima
  float visibilidadColor;         // Visibilidad Maxima para el color de la visualizacion especifica
  float velocidadViento;
  float velocidadVientoMin;
  float velocidadVientoMinTam;
  float rafaga;
  float arc_PI;

  // Se crea el constructor de la clase y se determinan los parámetros que va a recibir.
  ClassDataVis(float dias, float meses, float maxima,
                float minima, String mes, float diaP,
                float maximaColor, float evento, float eventoStroke,
                float visibilidad, float velocidadViento, float rafaga,
                float arc_PI, float visibilidadMin, float velocidadVientoMin,
                float visibilidadColor, float velocidadVientoMinTam){

    // Importante señalar que las variables de la clase no tienen que ver con las variables generales del sketch.

    this.dias = map(dias,0,1,1,17);
    this.meses = map(meses,0,12,0,190);
    this.anos = anos;
    this.dia = dia;
    this.diaP = diaP;
    this.ano = ano;
    this.mes = mes;
    this.maxima = map(maxima,21,39,2,20);
    this.maximaColor = map(maxima,29,35,100,255);
    this.minima = minima;
    this.evento = evento;
    this.rafaga = map(rafaga,5,33,0,10);
    this.visibilidad = map(visibilidad,5,33,1,255);
    this.visibilidadColor = map(visibilidad,5,33,1,120);
    this.visibilidadMin = map(visibilidadMin,2,10,120,255);           // Para el color de los arcos de adentro
    this.velocidadViento =  map(velocidadViento,1,140,1,100);         // Tamaño de los arcos de adentro
    this.velocidadVientoMin =  map(velocidadVientoMin,6,150,0,0.5);
    this.velocidadVientoMinTam =  map(velocidadVientoMin,6,40,0,50);
    this.eventoStroke = map(evento,0,150,0,6);
    this.arc_PI = map(velocidadViento,19,150,0,3);
  }

////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////// VISUALIZACIÓN ANUAL Y DIAGRAMACION. //////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////
void diagramacion(float i){
  pushMatrix();
    strokeWeight(eventoStroke);
    stroke(evento*2,30,30);
    ellipseMode(CENTER);
    translate(width/2,height/2);
    rotate(radians(i));
    fill(visibilidad/2,visibilidad/2,visibilidad);
    ellipse(200,1,velocidadViento*1.7,10);
  popMatrix();
  // TEXTOS
  pushMatrix();
    translate(width/2,height/2+50);
    textAlign(CENTER);
    textFont(raleway35);
    text("Visualización Anual", -180, 200,370,120);
    textFont(Cabin24);
    text("Obscuridad = Mejor Visibilidad", -180, 235,370,120);
    textFont(Cabin15);
    text("Tamaño = Velocidad Viento", -180, 260,370,120);
    text("Rojo de bordes = Eventos Peligrosos", -180, 280,370,120);
  popMatrix();
}
////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////// VISUALIZACIÓN MENSUAL Y DIAGRAMACION. /////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////
void diagramacionMensual(float i, int principioMes){
  pushMatrix();
    translate(360,600);
    // TEXTOS
    strokeWeight(7);
    textSize(24);
    textFont(Cabin24);
    fill(0, 102, 153);
    textAlign(RIGHT);
    text("Vizualizacion", -270, -315,300,200);
    text("mensual", -270, -290,300,200);
    textSize(15);
    textFont(Cabin15);
    text("Obscuridad = Mejor Visibilidad", -270, -260,300,200);
    text("Rango del arco = Vel Viento", -270, -240,300,200);
    textSize(60);
    textFont(ralewayBold);
    text(mes, -340, -375,370,120);
    // FIGURA
    rotate(radians(270));
    noFill();
    stroke(visibilidadColor-50,visibilidadColor-50,visibilidadColor+50);
    arc(50, 55, 20+ i*0.8, 20+ i*0.8, 0, QUARTER_PI+arc_PI);
    stroke(visibilidadMin-50,visibilidadMin-50,visibilidadMin+50);
    arc(50, 55, 20+ i*0.8, 20+ i*0.8, 0, QUARTER_PI+velocidadVientoMin);
    ellipseMode(CENTER);
  popMatrix();
  // IMAGENES
  image(flechas,300,50,200,50);
}

////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////// VISUALIZACIÓN MENSUAL Y DIAGRAMACION.//////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////

void diagramacionSemana(float i, float principioSem){
  pushMatrix();
    translate(width/2,height/2);
    ellipseMode(CENTER);
    // ARCOS VELOCIDAD MAXIMA
    rotate(radians(i*7.2));
    noStroke();
    fill(20,20,visibilidadColor+20);
    arc(0, 0, 450+velocidadViento*2, 450+velocidadViento*2, 0,1);
    // ARCOS DE VEL MINIMA
    fill(80,80,visibilidadMin);
    arc(0, 0, 380+velocidadVientoMinTam, 380+velocidadVientoMinTam, 0,1);
    // ARCO DE EVENTOS
    fill(evento*1.5,0,0);
    arc(0, 0, 320, 320, 0,1);
    //CIRCUNFERENCIA DEL CENTRO, SOLO PARA ESTETICA.
    fill(255);
    ellipse(0,0,300,300);
  popMatrix();
  // TEXTOS INFO SEMANAS
  pushMatrix();
    fill(0);
    translate(width/2,height/2);
    textSize(60);
    textFont(raleway35);
    textAlign(CENTER);
    text(mes, -180, -50,370,120);
    textFont(Cabin15);
    text("Visualización semanal", -180, -10,370,120);
    text("Obscuridad = Mejor Visibilidad", -180, 10,370,120);
    text("Tamaño = Velocidad Viento", -180, 30,370,120);
    text("Rojo = Eventos Peligrosos", -180, 50,370,120);
  popMatrix();
  // IMAGENES
  image(senalIteracion,300,50,200,50);

  }
}
