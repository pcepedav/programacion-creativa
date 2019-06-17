//Certamen2_ProgramacionCreativa
//Paula Cepeda

//Array de objetos por mes
Clase [] enero= new Clase[31];
Clase [] febrero= new Clase[28];
Clase [] marzo= new Clase[31];
Clase [] abril= new Clase[30];
Clase [] mayo= new Clase[31];
Clase [] junio= new Clase[30];
Clase [] julio= new Clase[31];
Clase [] agosto= new Clase[31];
Clase [] septiembre= new Clase[30];
Clase [] octubre= new Clase[31];
Clase [] noviembre= new Clase[30];
Clase [] diciembre= new Clase[31];
//array para visualizacion total
Clase [] total= new Clase[365];


Table tabla;
int trimestre1=100; //division en 3 del canvas para disponer los meses de a 4
int trimestre2=300;
int trimestre3=500;
int lugar=150; //posicion de conjuntos de meses en el canvas
float dias=0;
int u=18; //columna de Velocidad Maxima de vientos


void setup() {
  size(1000, 800);
  tabla = loadTable("baseDatos2015MD.csv", "header"); //cargar */tabla*/ e ignorar la primera fila
  frameRate(5);
}


void draw() {
  background(0);
  textAlign(LEFT);
  textSize(12);
  text("E N E R O",lugar, trimestre1-5);
  text("F E B R E R O",lugar+200, trimestre1-5);
  text("M A R Z O",lugar+400, trimestre1-5);
  text("A B R I L",lugar+600, trimestre1-5);
  text("M A Y O",lugar, trimestre2-5);
  text("J U N I O",lugar+200, trimestre2-5);
  text("J U L I O",lugar+400, trimestre2-5);
  text("A G O S T O",lugar+600, trimestre2-5);
  text("S E P T I E M B R E",lugar, trimestre3-5);
  text("O C T U B R E",lugar+200, trimestre3-5);
  text("N O V I E M B R E",lugar+400, trimestre3-5);
  text("D I C I E M B R E",lugar+600, trimestre3-5);


// Visualizacion agrupada por meses, días superpuestos en elipses de radio proporcional a la velocidad de los vientos.

  for (int i=0; i<31; i++) {
    enero[i]= new Clase(*/tabla*/.getInt(i, 2), */tabla*/.getInt(i, 18), lugar, trimestre1, */tabla*/.getString(i, 23));
    enero[i].colores();
    enero[i].mesesful();
  }

  for (int i=0; i<28; i++) {
    febrero[i]= new Clase(*/tabla*/.getInt(i+31, 2), */tabla*/.getInt(i+31, 18), lugar+200, trimestre1, */tabla*/.getString(i+31, 23));
    febrero[i].colores();
    febrero[i].mesesful();
  }

  for (int i=0; i<31; i++) {
    marzo[i]= new Clase(*/tabla*/.getInt(i, 2), */tabla*/.getInt(i+59, 18), lugar+400, trimestre1, */tabla*/.getString(i+59, 23));
    marzo[i].colores();
    marzo[i].mesesful();
  }
  for (int i=0; i<30; i++) {
    abril[i]= new Clase(*/tabla*/.getInt(i, 2), */tabla*/.getInt(i+89, 18), lugar+600, trimestre1, */tabla*/.getString(i+89, 23));
    abril[i].colores();
    abril[i].mesesful();
  }

  for (int i=0; i<31; i++) {
    mayo[i]= new Clase(*/tabla*/.getInt(i, 2), */tabla*/.getInt(i+120, 18), lugar, trimestre2, */tabla*/.getString(i+120, 23));
    mayo[i].colores();
    mayo[i].mesesful();
  }
  for (int i=0; i<30; i++) {
    junio[i]= new Clase(*/tabla*/.getInt(i, 2), */tabla*/.getInt(i+150, 18), lugar+200, trimestre2, */tabla*/.getString(i+150, 23));
    junio[i].colores();
    junio[i].mesesful();
  }
  for (int i=0; i<31; i++) {
    julio[i]= new Clase(*/tabla*/.getInt(i, 2), */tabla*/.getInt(i+181, 18), lugar+400, trimestre2, */tabla*/.getString(i+181, 23));
    julio[i].colores();
    julio[i].mesesful();
  }
  for (int i=0; i<31; i++) {
    agosto[i]= new Clase(*/tabla*/.getInt(i, 2), */tabla*/.getInt(i+212, 18), lugar+600, trimestre2, */tabla*/.getString(i+212, 23));
    agosto[i].colores();
    agosto[i].mesesful();
  }
  for (int i=0; i<30; i++) {
    septiembre[i]= new Clase(*/tabla*/.getInt(i, 2), */tabla*/.getInt(i+242, 18), lugar, trimestre3, */tabla*/.getString(i+242, 23));
    septiembre[i].colores();
    septiembre[i].mesesful();
  }
  for (int i=0; i<31; i++) {
    octubre[i]= new Clase(*/tabla*/.getInt(i, 2), */tabla*/.getInt(i+273, 18), lugar+200, trimestre3, */tabla*/.getString(i+273, 23));
    octubre[i].colores();
    octubre[i].mesesful();
  }
  for (int i=0; i<30; i++) {
    noviembre[i]= new Clase(*/tabla*/.getInt(i, 2), */tabla*/.getInt(i+303, 18), lugar+400, trimestre3, */tabla*/.getString(i+303, 23));
    noviembre[i].colores();
    noviembre[i].mesesful();
  }
  for (int i=0; i<31; i++) {
    diciembre[i]= new Clase(*/tabla*/.getInt(i, 2), */tabla*/.getInt(i+334, 18), lugar+600, trimestre3, */tabla*/.getString(i+334, 23));
    diciembre[i].colores();
    diciembre[i].mesesful();
  }
////////////////

  if (keyPressed) {
      if (key == 'a') { //mantener apretada para ver el resumen del año total
      background(0);
      textAlign(CENTER);
      text("V I Z  A N U A L",width/2, 750);
      for (int i=0; i<365; i++) {
        total[i]= new Clase(*/tabla*/.getInt(i, 2), */tabla*/.getInt(u, 18)*4, width/2, height/2, */tabla*/.getString(i, 23));
        u=u+1;
        total[i].colores();
        total[i].totalano();

        if (u>364) {
          u=0;
        }
      }
    }
    if (key == 'm') { //mantener apretada para ver el resumen del año por meses
      background(0);
      textAlign(CENTER);
      text("V I Z  M E N S U A L",width/2, 750);
      for (int i=0; i<31; i++) {
        total[i]= new Clase(*/tabla*/.getInt(i, 2), */tabla*/.getInt(u, 18)*4, width/2, height/2, */tabla*/.getString(i, 23));
        u=u+1;
        total[i].colores();
        total[i].totalano();

        if (u>364) {
          u=0;
        }
      }
    }
if (key == 's') { //mantener apretada para ver el resumen del año por semanas
      background(0);
      textAlign(CENTER);
      text("V I Z  S E M A N A L",width/2, 750);
      for (int i=0; i<7; i++) {
        total[i]= new Clase(*/tabla*/.getInt(i, 2), */tabla*/.getInt(u, 18)*4, width/2, height/2, */tabla*/.getString(i, 23));
        u=u+1;
        total[i].colores();
        total[i].totalano();
        if (u>364) {
          u=0;
        }
      }
    }
          if (key == 'd') { //mantener apretada para ver el detalle diario
      background(0);
      textAlign(CENTER);
      text("V I Z  D I A R I A",width/2, 750);
      for (int i=0; i<1; i++) {
        total[i]= new Clase(*/tabla*/.getInt(i, 2), */tabla*/.getInt(u, 18)*4, width/2, height/2, */tabla*/.getString(i, 23));
        u=u+1;
        total[i].colores();  //No pude hacer que leyera el color de la linea :(
        total[i].totalano();
        if (u>364) {
          u=0;
        }
      }
    }
  }
}
