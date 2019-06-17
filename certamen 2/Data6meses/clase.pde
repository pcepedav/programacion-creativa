// EL diseño de la clase debe tener atributos del mismo datatype que los de la base de datos
class Clase {
  String fecha, ano, mes, dia;
  int i;
  float x, y, a, b, c, d,f,g,h,j,l,m,n,o, maxima, minima, dewpointc, meandewpointc, mindewpointc, maxhumidity, meanhumidity, minhumidity, maxsealevelpressure;
  PVector pos, vel;
  int corR;
  int angulo;
  float raio=100;

  Clase(String fecha, float maxima, float minima, float dewpointc, float meandewpointc, float mindewpointc, float maxhumidity, float meanhumidity, float minhumidity, float maxsealevelpressure) {
    this.fecha = fecha;
    this.maxima = map(maxima, 0, 100, 0, 500);
    this.minima = map(minima, 0, 100, 0, 500);
    this.dewpointc = map(dewpointc, 0, 100, 0, 500);
    this.meandewpointc = map(meandewpointc, 0, 100, 0, 500);
    this.mindewpointc = map(mindewpointc, 0, 100, 0, 500);
    this.maxhumidity = map(maxhumidity, 0, 100, 0, 500);
    this.meanhumidity = map(meanhumidity, 0, 100, 0, 500);
    this.minhumidity = map(minhumidity, 0, 100, 0, 500);
    this.maxsealevelpressure = map(maxsealevelpressure, 0, 100, 0, 500);
  }


  void temperatura() {
    pushMatrix();

    textSize(10);
    fill(196, 23, 14);
    text("Maxima Temperatura", 200, 100);
    // frameRate(500);
    if (raio >200) raio=-200;
    fill(196, 23, 14);
    // float x;
    // float y;
    // x= raio*cos (radians(angulo));
    // y= raio*sin(radians(angulo));
    //fill(random( 40,255),255,255);
    fill(196, 23, 14);
    ellipse(x+100, y+100, maxima, maxima);
    angulo+=10;//angulo=angulo+1;
    corR++;
    if (corR>255)
      corR=0;
    raio=raio+20.0/40;

    //    fill(196, 23, 14);
    //ellipse(100, 100, maxima, maxima);
    popMatrix();


        textSize(10);
    fill(237, 218, 38);
    text("Minima Temperatura", 200, 115);
    // frameRate(5);
    // if (raio >10) raio=-10;
    // float a;
    // float b;
    // a= raio*cos (radians(angulo));
    // b= raio*sin(radians(angulo));
    //fill(random( 40,255),255,255);
    fill(237, 218, 38);
    ellipse( a+100, b+100, minima, minima);
    angulo+=10;//angulo=angulo+1;
    corR++;
    if (corR>255)
      corR=0;
    raio=raio+20.0/40;
  }


  void dewpointc() {
    textSize(10);
    fill(28, 255, 238);
    text("Maximo Punto Rocio", 350, 250);

		frameRate(5);

    if (raio >10) raio=-10;
    float c;
    float d;
    c= raio*cos (radians(angulo));
    d= raio*sin(radians(angulo));
    //fill(random( 40,255),255,255);
    fill(28, 255, 238);
    ellipse( c+250, d+250, dewpointc, dewpointc);
    angulo+=10;//angulo=angulo+1;
    corR++;
    if (corR>255)
      corR=0;
    raio=raio+20.0/40;

        textSize(10);
    fill(157, 233, 255);
    text("Minimo Punto Rocio", 350, 265);
    frameRate(5);
    if (raio >10) raio=-10;
    float f;
    float g;
    f= raio*cos (radians(angulo));
    g= raio*sin(radians(angulo));
    //fill(random( 40,255),255,255);
    fill(157, 233, 255);
    ellipse( f+250, g+250, mindewpointc, mindewpointc);
    angulo+=10;//angulo=angulo+1;
    corR++;
    if (corR>255)
      corR=0;
    raio=raio+20.0/40;
  }



  void humidity() {
     textSize(10);
    fill(5, 160, 148);
    text("Maxima Humedad", 850, 550);
    frameRate(5);
    if (raio >10) raio=-10;
    float l;
    float m;
    l= raio*cos (radians(angulo));
    m= raio*sin(radians(angulo));
    //fill(random( 40,255),255,255);
    fill(5, 160, 148);
    ellipse( l+550, m+550, maxhumidity, maxhumidity);
    angulo+=10;//angulo=angulo+1;
    corR++;
    if (corR>255)
      corR=0;
    raio=raio+20.0/40;

      textSize(10);
    fill(163, 245, 239);
    text("Minima Humedad", 850, 565);
    frameRate(5);
    if (raio >10) raio=-10;
    float n;
    float o;
    n= raio*cos (radians(angulo));
    o= raio*sin(radians(angulo));
    //fill(random( 40,255),255,255);
    fill(163, 245, 239);
    ellipse( n+550, o+550, minhumidity, minhumidity);
    angulo+=10;//angulo=angulo+1;
    corR++;
    if (corR>255)
      corR=0;
    raio=raio+20.0/40;


  }





}
