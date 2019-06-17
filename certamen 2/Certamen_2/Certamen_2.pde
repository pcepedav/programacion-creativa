Clase[] objeto;
Table tabla;
int escala;
void setup() {


  background(50);
  tabla=loadTable("baseDatos2015.csv", "header");
  size(1920, 1080);
  int total = tabla.getRowCount();
  objeto = new Clase[total];

  objeto = new Clase[tabla.getRowCount()];

  for (int i = 0; i < tabla.getRowCount(); i++) {
    TableRow row = tabla.getRow(i);


    float maxtemp = row.getInt("Max TemperatureC");//se toman todos los valores de la esta columnay las de abajo
    float minhum = row.getInt(" Min Humidity");
    float mintemp = row.getInt("Min TemperatureC");

    objeto[i] = new Clase (minhum, maxtemp, mintemp);
  }
  noStroke();
}
void draw() {



  translate(width/2, height/2);

  //frameRate(1);
  background(250);

  for (int i = 0; i < objeto.length; i ++) {
    objeto[i].minimahum();
    objeto[i].minimatemp();
    objeto[i].maxtemp();
  }
}
