//Autor: Felipe Castillo
//Certamen 02/Programación Creativa
//Profesor: Nicolás Troncoso
//Universidad del Desarrollo
//Código Principal

Clase[] datos;
int i;
Table tabla;

void setup() {

  size(1920, 1080);

  //Definición de Busqueda de Base de Datos Anual 2015

  tabla = loadTable("baseDatos2015.csv", "header");
  int total = tabla.getRowCount();
  datos = new Clase[365];
  for (int i = 0; i < tabla.getRowCount(); i++) {
    TableRow row = tabla.getRow(i);
    String fecha = row.getString("AST");
    int maximaTemp = row.getInt("Max TemperatureC");
    int meanTemp = row.getInt("Mean TemperatureC");
    int minimaTemp = row.getInt("Min TemperatureC");
    int dewpoint = row.getInt("Dew PointC");
    int meandew = row.getInt ("MeanDew PointC");
    int mindew = row.getInt("Min DewpointC");
    datos[i] = new Clase(fecha, maximaTemp, meanTemp, minimaTemp, dewpoint, meandew, mindew, i);
  }
}
void draw() {
  background(201,225,226);
  for (int i = 0; i < datos.length; i++) {
    datos[i].visualizacion1();
    datos[i].visualizacion2();

  }
}
