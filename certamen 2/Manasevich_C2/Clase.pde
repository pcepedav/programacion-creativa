class Clase { //clase
  String fecha;//variables
  int maximaT, minimaT,maximaH, minimaH;

  Clase(String fecha, int maximaT, int minimaT,int maximaH, int minimaH) {//constructor

    this.fecha = fecha;  //igualar variables
    this.maximaT = maximaT;
    this.minimaT = minimaT;
    this.maximaH = maximaH;
    this.minimaH = minimaH;



  }

  void funcion(int i) {
    pushMatrix();
    translate(300,500); //trasladar
    scale(.35); //escalar
    noFill();

//Circulos Temperatura

    stroke(random(180,255),random(180),0);
    float a=(height/1.2)-(maximaT+=maximaT/20);
    ellipse(width/2,a,maximaT*2,minimaT+=1);

//Circulos Humedad
    stroke(0,0,random(255));
    float b=(height/1.2)-(maximaH-=maximaH/20);
    ellipse(width/2,a,maximaH*2,minimaH+=1);
    popMatrix();

    noStroke();
    fill(255);
    rect(0,770,900,200);

    fill(0);
    textSize(20);//Linea 1 de texto

    text("MaxT"+maximaT+"MinT "+minimaT+" MaxH"+maximaH+"MinH "+ minimaH,300,800);

}

}
