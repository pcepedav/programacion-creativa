class Clase {
  String fecha; 
  int Tmaxima, Tmean, Tminima; //Temperature
  int Hmaxima, Hmean, Hminima; //Humidity
  int Vmaxima, Vmean, Vminima; //Visibility

  float x, y;
  PVector pos, vel;

  Clase(String fecha, int Tmaxima, int Tmean, int Tminima, int Hmaxima, int Hmean, int Hminima, int Vmaxima, int Vmean, int Vminima) {
    //Fecha
    this.fecha = fecha;
    //Temperatura
    this.Tmaxima = Tmaxima;
    this.Tmean = Tmean;
    this.Tminima = Tminima;
    //Humidity
    this.Hmaxima = Hmaxima;
    this.Hmean = Hmean;
    this.Hminima = Hminima;
    //Visibility
    this.Vmaxima = Vmaxima;
    this.Vmean = Vmean;
    this.Vminima = Vminima;


    x = width/2;
    y = height/2;
  }

  void funcion() {
    for (int i=0; i<tabla.getRowCount(); i++) {
      pushMatrix();
      noStroke();
      fill(#A31FD8*i);
      ellipse (100, 20*i, tabla.getFloat(i, ("Max TemperatureC")), tabla.getFloat(i, 20)*2);
      ellipse (130, 20*i, tabla.getFloat(i, ("Mean TemperatureC")), tabla.getFloat(i, 20)*2);
      ellipse (150, 20*i, tabla.getFloat(i, ("Min TemperatureC")), tabla.getFloat(i, 20)*2);
      popMatrix();

      pushMatrix();
      noStroke();
      ellipse(210, 20*i, tabla.getFloat(i, ("Max Humidity")), tabla.getFloat(i, 20)*2);
      ellipse(270, 20*i, tabla.getFloat(i, ("Mean Humidity")), tabla.getFloat(i, 20)*2);
      ellipse(320, 20*i, tabla.getFloat(i, ("Min Humidity")), tabla.getFloat(i, 20)*2);
      popMatrix();

      pushMatrix();
      ellipse(360, 20*i, tabla.getFloat(i, ("Max VisibilityKm")), tabla.getFloat(i, 20)*2);
      ellipse(380, 20*i, tabla.getFloat(i, ("Mean VisibilityKm")), tabla.getFloat(i, 20)*2);
      ellipse(390, 20*i, tabla.getFloat(i, ("Min VisibilitykM")), tabla.getFloat(i, 20)*2);
      popMatrix();
    }
  }
}
