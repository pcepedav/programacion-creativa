//Certamen_02 -Gatica Cristobal-
//Utilizando los datos del año 2015 de la tabla dada, me dispuse a abarcar las maximas de viento registradas por dias, ordenadas por mes (1-12) mostrando a base de spinners la intensidad de cada dia.
// Se puede leer por mes hacia el lado derecho y por dias para abajo.

Table baseDatos;
//dias
float vViento[] = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0};

//Llamados

Viento [] venero;
Viento [] vfebrero;
Viento [] vmarzo;
Viento [] vabril;
Viento [] vmayo;
Viento [] vjunio;
Viento [] vjulio;
Viento [] vagosto;
Viento [] vseptiembre;
Viento [] voctubre;
Viento [] vnoviembre;
Viento [] vdiciembre;
float rot;

//Parte de degrade
int r = 0;
int g = 0;
int b = 0;
int myStrokeWeight = 3;


void setup() {
  size(870, 800);


  baseDatos = loadTable("AñoVientos.csv", "header");
// Llamada por meses, segun dias
  venero = new Viento[31];
  vfebrero = new Viento[28];
  vmarzo = new Viento[31];
  vabril = new Viento[30];
  vmayo = new Viento[31];
  vjunio = new Viento[30];
  vjulio = new Viento[31];
  vagosto = new Viento[31];
  vseptiembre = new Viento[30];
  voctubre = new Viento[31];
  vnoviembre = new Viento[30];
  vdiciembre = new Viento[31];

//localizaciones
  for (int i = 0; i < 31; i ++) { //Meses 31
    venero[i] = new Viento(50, (i+1)*25, baseDatos.getFloat(i, 3));
    vmarzo[i] = new Viento(190, (i+1)*25, baseDatos.getFloat(i, 3));
    vmayo[i] = new Viento(330, (i+1)*25, baseDatos.getFloat(i, 3));
    vjulio[i] = new Viento(470, (i+1)*25, baseDatos.getFloat(i, 3));
    vagosto[i] = new Viento(540, (i+1)*25, baseDatos.getFloat(i, 3));
    voctubre[i] = new Viento(680, (i+1)*25, baseDatos.getFloat(i, 3));
    vdiciembre[i] = new Viento(820, (i+1)*25, baseDatos.getFloat(i, 3));
  }


  for (int i = 0; i < 30; i ++) {  //Meses 30
    vabril[i] = new Viento(260, (i+1)*25, baseDatos.getFloat(i, 3));
    vjunio[i] = new Viento(400, (i+1)*25, baseDatos.getFloat(i, 3));
    vseptiembre[i] = new Viento(610, (i+1)*25, baseDatos.getFloat(i, 3));
    vnoviembre[i]= new Viento(750, (i+1)*25, baseDatos.getFloat(i, 3));
  }

  for (int i = 0; i < 28; i ++) {  //Febrero 28
    vfebrero[i] = new Viento(120, (i+1)*25, baseDatos.getFloat(i+31, 3));
  }
}


void draw() {           //Degrade
  background(33, 248, 255);
  fill(0);
  for (int i = 0; i< height; i++)
{
  stroke(r, i, i);
  line(0,i, width, i);
}


//Dependiendo de en que dia termina el siguiente MANDADO suma los dias ejmeplo; i=0 hasta 31 = enero, para lograr febrero este tiene que sumar hasta i+59 //


  for (int i = 0; i < 31; i++) {   //meses 31
    pushMatrix();

    venero[i].vel(venero.[i].variableDelDato)*0.1);
    venero[i].spinner();
    popMatrix();
    pushMatrix();
    vmarzo[i].vel(baseDatos.getFloat(i+59, 3)*0.1);
    vmarzo[i].spinner();
    popMatrix();
    pushMatrix();
    vmayo[i].vel(baseDatos.getFloat(i+121, 3)*0.1);
    vmayo[i].spinner();
    popMatrix();
    pushMatrix();
    vjulio[i].vel(baseDatos.getFloat(i+182, 3)*0.1);
    vjulio[i].spinner();
    popMatrix();
    pushMatrix();
    vagosto[i].vel(baseDatos.getFloat(i+213, 3)*0.1);
    vagosto[i].spinner();
    popMatrix();
    pushMatrix();
    voctubre[i].vel(baseDatos.getFloat(i+274, 3)*0.1);
    voctubre[i].spinner();
    popMatrix();
    pushMatrix();
    vdiciembre[i].vel(baseDatos.getFloat(i+334, 3)*0.1);
    vdiciembre[i].spinner();
    popMatrix();
  }

  for (int i = 0; i < 30; i++) {    //meses 30
    pushMatrix();
    vabril[i].vel(baseDatos.getFloat(i+90, 3)*0.1);
    vabril[i].spinner();
    popMatrix();
    pushMatrix();
    vjunio[i].vel(baseDatos.getFloat(i+151, 3)*0.1);
    vjunio[i].spinner();
    popMatrix();
    pushMatrix();
    vseptiembre[i].vel(baseDatos.getFloat(i+243, 3)*0.1);
    vseptiembre[i].spinner();
    popMatrix();
    pushMatrix();
    vnoviembre[i].vel(baseDatos.getFloat(i+305, 3)*0.1);
    vnoviembre[i].spinner();
    popMatrix();
  }

  for (int i = 0; i < 28; i++) {    //febrero
    pushMatrix();
    vfebrero[i].vel(baseDatos.getFloat(i+31, 3)*0.1);
    vfebrero[i].spinner();
    popMatrix();
  }
}
