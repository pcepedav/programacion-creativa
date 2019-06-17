class Clase {
  int ano, mes, dia, maxima, media, minima, maxrocio, medrocio, minrocio, maxhumedad, medhumedad, minhumedad, maxpresion, medpresion, minpresion, maxvisibilidad, medvisibilidad, minvisibilidad, maxviento, medviento, minviento, nubes, eventos, gradosviento ;
  int i;
  float rotacion;
  float rotacionmes;
  float rotacionmes30;
  float rotacionmes28;

  Clase (int ano, int mes, int dia, int maxima, int media, int minima, int maxrocio, int medrocio, int minrocio, int maxhumedad, int i, int medhumedad, int minhumedad, int maxpresion, int medpresion, int minpresion, int maxvisibilidad, int medvisibilidad, int minvisibilidad, int maxviento, int medviento, int minviento, int nubes, int eventos, int gradosviento) {

    this.ano=ano;
    this.mes=mes;
    this.dia=dia;
    this.maxima=maxima;  
    this.media=media;
    this.minima=minima;
    this.maxrocio=maxrocio;
    this.medrocio=medrocio;
    this.minrocio=minrocio;
    this.maxhumedad=maxhumedad;
    this.medhumedad=medhumedad;
    this.minhumedad=minhumedad;
    this.maxpresion=maxpresion; 
    this.medpresion=medpresion;
    this.minpresion=minpresion;
    this.maxvisibilidad=maxvisibilidad;
    this.medvisibilidad=medvisibilidad;
    this.minvisibilidad=minvisibilidad;
    this.maxviento=maxviento;
    this.medviento=medviento;
    this.minviento=minviento;
    this.nubes=nubes;
    this.eventos=eventos;
    this.gradosviento=gradosviento;
    //rotacion del año
    this.rotacion = map(i, 0, 365, 0, TWO_PI);
    //rotacion de los meses de 31 dias
    this.rotacionmes = map(i, 0, 31, 0, TWO_PI);
    //rotacion de los meses de 30 dias
    this.rotacionmes30 = map(i, 0, 30, 0, TWO_PI);
    //rotacion de los meses de 28 dias
    this.rotacionmes28 = map(i, 0, 28, 0, TWO_PI);
  }
//temperatura minima representada con color celeste por encima de la temperatura maxima
  void temperaturamin() {
    stroke(35, 200, 220);
    pushMatrix();
    translate(width/2, height/2);
    rotate(rotacion);
    // radio del punto central que se iniciaran las lineas
    translate(200, 0);
    line(0, 0, minima*3.5, 0);    
    popMatrix();
  }
  void temperaturamax() {
    stroke(255, 0, 0);
    pushMatrix();
    translate(width/2, height/2);
    rotate(rotacion);
    translate(200, 0);
    line(0, 0, maxima*3.5, 0);    
    popMatrix();
  }

  //comparar los puntos de rocio,la linea crece en ambos sentidos representando la minima por un lado y la maxima por el otro
  void rocio() {
    strokeWeight(2);
    stroke(35,100, 220);
    pushMatrix();
    translate(width/2, height/2);
    rotate(rotacion);
    translate(95, 0);
    line(minrocio, 0, maxrocio*3.5, 0);    
    popMatrix();
  }

  void humedad() {
    strokeWeight(2);
    stroke(0, 255, 50);
    pushMatrix();
    translate(width/2, height/2);
    rotate(rotacion);
    // radio del punto central que se iniciaran las lineas
    translate(290, 0);
    line(minhumedad, 0, maxhumedad*2, 0);    
    popMatrix();
  }
  
  //
  void enero() {

    strokeWeight(1);
    stroke(255);
    pushMatrix();    
    translate(100,100);
    rotate(rotacionmes);
    translate(5, 0);
    line(minvisibilidad, 0, maxvisibilidad*2.5, 0);  
    popMatrix();
   
  }
  
   void febrero() {

    strokeWeight(1);
    stroke(255);
    pushMatrix();    
    translate(400, 100);
    rotate(rotacionmes28);
    translate(5, 0);
    line(minvisibilidad, 0, maxvisibilidad*2.5, 0);  

    popMatrix();
  }
   void marzo() {

    strokeWeight(1);
    stroke(255);
    pushMatrix();    
    translate(600,100);
    rotate(rotacionmes);
    translate(5, 0);
    line(minvisibilidad, 0, maxvisibilidad*2.5, 0);  

    popMatrix();
  }
  
   void abril() {

    strokeWeight(1);
    stroke(255);
    pushMatrix();    
    translate(900,100);
    rotate(rotacionmes30);
    translate(5, 0);
    line(minvisibilidad, 0, maxvisibilidad*2.5, 0);  
    popMatrix();
  }
    void mayo() {

    strokeWeight(1);
    stroke(255);
    pushMatrix();    
    translate(100,300);
    rotate(rotacionmes);
    translate(5, 0);
    line(minvisibilidad, 0, maxvisibilidad*2.5, 0);  
    popMatrix();
  }
    void junio() {

    strokeWeight(1);
    stroke(255);
    pushMatrix();    
    translate(400,300);
    rotate(rotacionmes30);
    translate(5, 0);
    line(minvisibilidad, 0, maxvisibilidad*2.5, 0);  
    popMatrix();
  }
   void julio() {

    strokeWeight(1);
    stroke(255);
    pushMatrix();    
    translate(600,300);
    rotate(rotacionmes);
    translate(5, 0);
    line(minvisibilidad, 0, maxvisibilidad*2.5, 0);  
    popMatrix();
  }
    void agosto() {

    strokeWeight(1);
    stroke(255);
    pushMatrix();    
    translate(900,300);
    rotate(rotacionmes);
    translate(5, 0);
    line(minvisibilidad, 0, maxvisibilidad*2.5, 0);  
    popMatrix();
  }
    void septiembre() {

    strokeWeight(1);
    stroke(255);
    pushMatrix();    
    translate(100,600);
    rotate(rotacionmes30);
    translate(5, 0);
    line(minvisibilidad, 0, maxvisibilidad*2.5, 0);  
    popMatrix();
  }
    void octubre() {

    strokeWeight(1);
    stroke(255);
    pushMatrix();    
    translate(400,600);
    rotate(rotacionmes);
    translate(5, 0);
    line(minvisibilidad, 0, maxvisibilidad*2.5, 0);  
    popMatrix();
  }
    void noviembre() {

    strokeWeight(1);
    stroke(255);
    pushMatrix();    
    translate(600,600);
    rotate(rotacionmes30);
    translate(5, 0);
    line(minvisibilidad, 0, maxvisibilidad*2.5, 0);  
    popMatrix();
  }
    void diciembre() {

    strokeWeight(1);
    stroke(255);
    pushMatrix();    
    translate(900,600);
    rotate(rotacionmes);
    translate(5, 0);
    line(minvisibilidad, 0, maxvisibilidad*2.5, 0);  
    popMatrix();
  }
}
