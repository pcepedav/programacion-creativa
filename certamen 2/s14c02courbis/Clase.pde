class Clase {
  String fecha;
  int maximah, minimah, maximat, minimat, medh, medt;
  int i;
  int x, y;
  int e;
  PVector pos, vel;




  Clase(String fecha, int maximah, int minimah, int maximat, int minimat, int medh, int medt, int i, int x, int y, int e) {
    this.fecha = fecha;
    this.maximah = maximah;
    this.minimah = minimah;
    this.maximat = maximat;
    this.minimat = minimat;
    this.medh = medh;
    this.medt = medt;
    this.i = i;
    this.x = x;
    this.y = y;
    this.e = e;

  }



void maxhum(int x, int y, int e){
  //VOID PARA LOS VALORES DE LA MÁXIMA
  pushMatrix();

  noFill();
  stroke(200, 30, 100, 80);
    translate(x, y);
     //POSICIÓN A LA QUE AVANZAN LOS ARCOS
    rotate(radians(20 + i*maximah));
     //ROTACIÓN DE LOS ARCOS PARA QUE NO QUEDEN TODOS EN EL MISMO CUARTO DE CÍRCULO
    arc(0, 0, maximah*e , maximah*e, 0, radians(maximah), OPEN);
     //ARC(POSICIÓN INICIAL X, POSICIÓN INICIAL Y, ANCHO DE LA ELIPSE EN LA QUE
     //SE ENCUENTRA INSCRITA EL ARCO, ALTO DE LA ELIPSE, PUNTO DE INICIO DEL ARCO,
     //GRADO QUE ABARCA EL ARCO,SI SE CIERRA AL FINAL LOS EXTREMOS O QUEDA
     //ABIERTO)
     //EL ALTO Y ANCHO DE LOS CÍRCULOS EN LOS QUE ESTÁN INSCRITOS LOS ARCOS
     //DEPENDEN DEL DATO QUE SE ESTÁ LEYENDO, Y DEBIDO A QUE LOS DATOS NO SUPERAN
     //EL VALOR DE 40, SE ESCALÓ MULTIPLICANDOLOS POR 7 PARA ASI VER CON
     //MEJOR CLARIDAD LA VISUALIZACIÓN Y QUE NO QUEDARA PEQUEÑO E ILEGIBLE
   popMatrix();

}

void mediahum(int x, int y, int e){
  //VOID PARA LOS VALORES DE LA MEDIA
  pushMatrix();

  noFill();
  stroke(216, 206, 22, 80);
    translate(x, y);
     //POSICIÓN A LA QUE AVANZAN LOS ARCOS
    rotate(radians(20 + i*medh));
     //ROTACIÓN DE LOS ARCOS PARA QUE NO QUEDEN TODOS EN EL MISMO CUARTO DE CÍRCULO
    arc(0, 0, medh*e, medh*e, 0, radians(medh), OPEN);

   popMatrix();

}

void minhum(int x, int y, int e){
//VOID PARA LOS VALORES DE LA MÍNIMA
  pushMatrix();

  noFill();
  stroke(150, 200, 100, 80);
    translate(x, y);
    rotate(radians(20 + i*minimah));
    arc(0, 0, minimah*e, minimah*e, 0, radians(minimah), OPEN);

  popMatrix();

}

void maxtemp(int x, int y, int e){
  //VOID PARA LOS VALORES DE LA MÁXIMA
  pushMatrix();

  noFill();
  stroke(237, 149, 53, 80);
    translate(x, y);
     //POSICIÓN A LA QUE AVANZAN LOS ARCOS
    rotate(radians(20 + i*maximat));
     //ROTACIÓN DE LOS ARCOS PARA QUE NO QUEDEN TODOS EN EL MISMO CUARTO DE CÍRCULO
    arc(0, 0, maximat*e, maximat*e, 0, radians(maximat), OPEN);

   popMatrix();

}

void mediatemp(int x, int y, int e){
  //VOID PARA LOS VALORES DE LA MEDIA
  pushMatrix();

  noFill();
  stroke(163, 22, 216, 80);
    translate(x, y);
     //POSICIÓN A LA QUE AVANZAN LOS ARCOS
    rotate(radians(20 + i*medt));
     //ROTACIÓN DE LOS ARCOS PARA QUE NO QUEDEN TODOS EN EL MISMO CUARTO DE CÍRCULO
    arc(0, 0, medt*e, medt*e, 0, radians(medt), OPEN);

   popMatrix();

}

void mintemp(int x, int y, int e){
//VOID PARA LOS VALORES DE LA MÍNIMA
  pushMatrix();

  noFill();
  stroke(17, 193, 211, 80);
    translate(x, y);
    rotate(radians(20 + i*minimat));
    arc(0, 0, minimat*e, minimat*e, 0, radians(minimat), OPEN);

  popMatrix();

}

//SEGUNDO TIPO DE VISUALIZACIÓN
//CIRCULOS PARALELOS

void semestre() {
  pushMatrix();

noStroke();
fill(200, 30, 100);
  ellipse(0+ i*7,300 - maximah*2, 7, 7);

fill(216, 206, 22);
  ellipse(0 + i*7,300- medh*2, 7, 7);

fill(150, 200, 100);
  ellipse(0 + i*7, 300 - minimah*2, 7, 7);

fill(237, 149, 53);
  ellipse(0 + i*7,300 - maximat*2, 7 ,7);

fill(163, 22, 216);
  ellipse(0 + i*7,300 - medt*2, 7, 7);

fill(17, 193, 211);
  ellipse(0 + i*7,300 - minimat*2, 7, 7);

//LA POSICIÓN EN LA QUE SE ENCUANTRAN LOS CÍRCULOS RESPECTO AL EJE Y
//DEPENDE DEL VALOR DEL DATO, TODOS TIENEN COMO PUNTO DE PARTIDA
//EN EL EJE Y UN VALOR DE 300PX, A ESA BASE SE LE RESTA EL VALORE
//DEL DATO MULTIPLICADO POR 2, ESTO PARA HACER MEJOR ENTENDIBLE LA
//DIFERENCIA

   popMatrix();

}



void semestre2() {
  pushMatrix();
noStroke();

fill(200, 30, 100);
  ellipse(-1275+ i*7,600 - maximah*2, 7, 7);

fill(216, 206, 22);
  ellipse(-1275 + i*7,600 - medh*2, 7, 7);

fill(150, 200, 100);
  ellipse(-1275 + i*7, 600 - minimah*2, 7, 7);

fill(237, 149, 53);
  ellipse(-1275 + i*7,600 - maximat*2, 7 ,7);

fill(163, 22, 216);
  ellipse(-1275 + i*7,600 - medt*2, 7, 7);

fill(17, 193, 211);
  ellipse(-1275 + i*7,600 - minimat*2, 7, 7);

  //LA POSICIÓN EN LA QUE SE ENCUANTRAN LOS CÍRCULOS RESPECTO AL EJE Y
  //DEPENDE DEL VALOR DEL DATO, TODOS TIENEN COMO PUNTO DE PARTIDA
  //EN EL EJE Y UN VALOR DE 600PX, A ESA BASE SE LE RESTA EL VALORE
  //DEL DATO MULTIPLICADO POR 2, ESTO PARA HACER MEJOR ENTENDIBLE LA
  //DIFERENCIA. EN ESTE CASO EN LA VARIABLE DE X SE REEMPLAZÓ EL 0 POR
  //-1275, LA RAZÓN DE ESTO ES PORQUE, COMO LA VARIABLE I EQUIVALE A EL
  //NÚMERO DE CASILLA QUE SE ESTÁ CONTANDO Y ESTA A DEMÁS SE MULTIPLICA POR
  //7, AL IR EN LA CASILLA 183, QUE ES DESDE DONDE PARTE JULIO, LOS
  //CÍRCULOS SE EMPIEZAN A DIBUJAR DONDE TERMINARON LOS DEL PRIMER SEMESTRE,
  //ENTONCES TENGO QUE RESTAR TODAS ESAS POSICIONES DE LOS CIRCULOS ANNTERIORES
  //PARA QUE LOS CIRCULOS DEL SEGUNDO SEMESTRE EMPIECEN AL INICIO DEL AREA DE
  //TRABAJO

   popMatrix();

}


void enero() {
  pushMatrix();


  noStroke();
  fill(200, 30, 100);
    ellipse(10+ i*15,height/2 - maximah*2, 15, 15);

  fill(216, 206, 22);
    ellipse(10 + i*15, height/2 - medh*2, 15, 15);

  fill(150, 200, 100);
    ellipse(10 + i*15, height/2 - minimah*2, 15, 15);

  fill(237, 149, 53);
    ellipse(10+ i*15, height/2 - maximat*2, 15, 15);

  fill(163, 22, 216);
    ellipse(10 + i*15, height/2- medt*2, 15, 15);

  fill(17, 193, 211);
    ellipse(10 + i*15, height/2 - minimat*2, 15, 15);

    stroke(255);
    line(30, height/2, 500, height/2);

    popMatrix();
  }

  void julio() {
    pushMatrix();

  noStroke();
  fill(200, 30, 100);
    ellipse(-2000+ i*15,height/2 - maximah*2, 15, 15);

  fill(216, 206, 22);
    ellipse(-2000 + i*15,height/2 - medh*2, 15, 15);

  fill(150, 200, 100);
    ellipse(-2000 + i*15, height/2 - minimah*2, 15, 15);

  fill(237, 149, 53);
    ellipse(-2000+ i*15,height/2 - maximat*2, 15, 15);

  fill(163, 22, 216);
    ellipse(-2000 + i*15,height/2 - medt*2, 15, 15);

  fill(17, 193, 211);
    ellipse(-2000 + i*15, height/2 - minimat*2, 15, 15);

    stroke(255);
    line(740, height/2, 1210, height/2);

     popMatrix();
    }

    void diciembre() {
      pushMatrix();

    noStroke();
    fill(200, 30, 100);
      ellipse(-4970+ i*15, 700 - maximah*2, 15, 15);

    fill(216, 206, 22);
      ellipse(-4970 + i*15,700 - medh*2, 15, 15);

    fill(150, 200, 100);
      ellipse(-4970 + i*15, 700 - minimah*2, 15, 15);

    fill(237, 149, 53);
      ellipse(-4970+ i*15,700 - maximat*2, 15, 15);

    fill(163, 22, 216);
      ellipse(-4970 + i*15,700 - medt*2, 15, 15);

    fill(17, 193, 211);
      ellipse(-4970 + i*15, 700 - minimat*2, 15, 15);

    stroke(255);
    line(30, 700, 500, 700);

    popMatrix();
      }



}
