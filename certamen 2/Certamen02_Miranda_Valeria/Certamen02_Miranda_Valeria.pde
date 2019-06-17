Clase[] objetos;

Table tabla;

void setup() {
  size(1200, 900);

  tabla = loadTable("DATAa.csv", "header");

  int total = tabla.getRowCount();
  objetos = new Clase[total];

  //objetos = new Class [tabla.getRowCount];

  for (int i = 0; i < tabla.getRowCount(); i++) {
    TableRow row = tabla.getRow(i);

    String fecha = row.getString("PET");
    //Temperatura (c)
    int Tmaxima = row.getInt("Max TemperatureC");
    int Tmean = row.getInt("Mean TemperatureC");
    int Tminima = row.getInt("Min TemperatureC");
    //Humidity
    int Hmaxima = row.getInt("Max Humidity");
    int Hmean = row.getInt("Mean Humidity");
    int Hminima = row.getInt("Min Humidity");
    //Visibility (km)
    int Vmaxima = row.getInt("Max VisibilityKm");
    int Vmean = row.getInt("Mean VisibilityKm");
    int Vminima = row.getInt("Min VisibilitykM");

    objetos[i] = new Clase (fecha, Tmaxima, Tmean, Tminima, Hmaxima, Hmean, Hminima, Vmaxima, Vmean, Vminima);

    println(tabla.getRowCount());
    println(tabla.getColumnCount());
  }
}

void draw() {
  background(0);
  for (int i = 0; i < objetos.length; i++) {
    objetos[i].funcion();
  }
}
