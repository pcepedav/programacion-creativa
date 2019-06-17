Clase[] objetos;

// Objeto tabla para manejar la base de datos
Table tabla;
int next;
int x;
int y;
int e;

void setup() {
fullScreen();
background(0);


next = 1;
  tabla = loadTable("data.csv", "header");

  // inicalizamos el array con la cantidad de filas del archivo
  int total = tabla.getRowCount(); //entrega el largo de la base de datos
  objetos = new Clase[total];

  // lo mismo se puede escribir en una línea de código
  objetos = new Clase[tabla.getRowCount()];

  for (int i = 0; i < tabla.getRowCount(); i++) {
  // Creamos un nuevo objeto del tipo TableRow con la información de cada fila
    TableRow row = tabla.getRow(i);

    String fecha = row.getString("M");
    int maximah = row.getInt("Max Humidity");
    int medh = row.getInt("Mean Humidity");
    int minimah = row.getInt("Min Humidity");
    int maximat = row.getInt("Max TemperatureC");
    int medt = row.getInt("Mean TemperatureC");
    int minimat = row.getInt("Min TemperatureC");

    // Con esas variables construyo un objeto
    objetos[i] = new Clase(fecha, maximah, minimah, maximat, minimat, medh, medt, i, x, y, e);
  }



}

void draw(){


  if (next == 1){
    background(0);
    textSize(30);
    textAlign(CENTER,CENTER);
    fill(255);
    text("Certamen 2: Visaualización de datos", width/2, height/2);

    textSize(20);
    text("Alumna: María José Courbis", width/2, height/2 + 35);

    textSize(20);
    text("Profesor: Nicolás Troncoso", width/2, height/2 + 60);

    textSize(20);
    text("Ayudante: Macarena Ferrer", width/2, height/2 + 85);

    textSize(13);
    fill(177, 178, 178);
    text("Para continuar pulse c", width/2, height/2 + 350);

  }

  if (next == 2){
    background(0);
    textSize(20);
    textAlign(CENTER,CENTER);
    fill(255);
    text("Visualización humedad y temperatura durante el año", width/2, 30);

    textSize(15);
    textAlign(1000,CENTER);
    text("Color Rosado: Humedad Máxima", 1000, height/2 + 250);
    text("Color Verde: Humedad Mínima", 1000, height/2 + 270);
    text("Color Naranjo: Temperatura Máxima", 1000, height/2 + 290);
    text("Color Celeste: Temperatura Mínima", 1000, height/2 + 310);
    text("Escala: 7:1 ", 1000, height/2 + 330);

    textSize(13);
    textAlign(CENTER,CENTER);
    fill(177, 178, 178);
    text("Para continuar pulse v", width/2, height/2 + 380);

    for (int i = 0; i < objetos.length; i ++) {
      objetos[i].maxhum(width/2, height/2, 7);
      objetos[i].minhum(width/2, height/2, 7);
      objetos[i].maxtemp(width/2, height/2, 7);
      objetos[i].mintemp(width/2, height/2, 7);
   }

  }




 if (next == 3){
   background(0);
   textSize(20);
   textAlign(CENTER,CENTER);
   fill(255);
   text("Comparación humedad y temperatura entre inicio de año, mitad de ayo y final de año", width/2, 30);

   textSize(15);
   textAlign(1000,CENTER);
   text("Color Rosado: Humedad Máxima", 1000, height/2 + 250);
   text("Color Verde: Humedad Mínima", 1000, height/2 + 270);
   text("Color Naranjo: Temperatura Máxima", 1000, height/2 + 290);
   text("Color Celeste: Temperatura Mínima", 1000, height/2 + 310);
   text("Escala: 4:1 ", 1000, height/2 + 330);

   textSize(15);
   textAlign(CENTER,CENTER);
   text("Enero", 200, 100);
   for (int i = 0; i < objetos.length; i ++) {
     if(i>= 2 && i<= 32){
        objetos[i].maxhum(200, height/2, 4);
        objetos[i].minhum(200, height/2, 4);
        objetos[i].maxtemp(200, height/2, 4);
        objetos[i].mintemp(200, height/2, 4);
      }

   }

   textSize(15);
   textAlign(CENTER,CENTER);
   text("Julio", 630, 100);
   for (int i = 0; i < objetos.length; i ++) {
     if(i>=183 && i<= 213){
        objetos[i].maxhum(630, height/2, 4);
        objetos[i].minhum(630, height/2, 4);
        objetos[i].maxtemp(630, height/2, 4);
        objetos[i].mintemp(630, height/2, 4);
     }

 }

 textSize(15);
 textAlign(CENTER,CENTER);
 text("Diciembre", 1050, 100);

 for (int i = 0; i < objetos.length; i ++) {
   if(i>=336 && i<= 366){
   objetos[i].maxhum(1050, height/2, 4);
   objetos[i].minhum(1050, height/2, 4);
   objetos[i].maxtemp(1050, height/2, 4);
   objetos[i].mintemp(1050, height/2, 4);
   }
}

textSize(13);
textAlign(CENTER,CENTER);
fill(177, 178, 178);
text("Para continuar pulse b", width/2, height/2 + 380);


}

if (next == 4){
  background(0);
  textSize(20);
  textAlign(CENTER,CENTER);
  fill(255);
  text("Comparación humedad y temperatura primer semestre", width/2, 30);

  textSize(15);
  textAlign(1000,CENTER);
  text("Color Rosado: Humedad Máxima", 1000, height/2 + 250);
  text("Color Amarillo: Humedad Media", 1000, height/2 + 270);
  text("Color Verde: Humedad Mínima", 1000, height/2 + 290);
  text("Color Naranjo: Temperatura Máxima", 1000, height/2 + 310);
  text("Color Morado: Temperatura Media", 1000, height/2 + 330);
  text("Color Celeste: Temperatura Mínima", 1000, height/2 + 350);
  text("Escala: 2:1 ", 1000, height/2 + 370);


  for (int i = 0; i < objetos.length; i ++) {
    if(i>=2 && i<= 182){
      objetos[i].semestre();


    }
 }

 textSize(20);
 textAlign(CENTER,CENTER);
 fill(255);
 text("Comparación humedad y temperatura segundo semestre", width/2, 350);

 for (int i = 0; i < objetos.length; i ++) {
   if(i>=183 && i<= 366){
     objetos[i].semestre2();

       }

     }

 textSize(13);
 textAlign(CENTER,CENTER);
 fill(177, 178, 178);
 text("Para continuar pulse n", width/2, height/2 + 380);


}
if (next == 5){
background(0);
textSize(20);
textAlign(CENTER,CENTER);
fill(255);
text("Comparación humedad y temperatura Enero, Julio y Diciembre", width/2, 30);
textSize(15);
textAlign(1000,CENTER);
text("Color Rosado: Humedad Máxima", 1000, height/2 + 250);
text("Color Amarillo: Humedad Media", 1000, height/2 + 270);
text("Color Verde: Humedad Mínima", 1000, height/2 + 290);
text("Color Naranjo: Temperatura Máxima", 1000, height/2 + 310);
text("Color Morado: Temperatura Media", 1000, height/2 + 330);
text("Color Celeste: Temperatura Mínima", 1000, height/2 + 350);
text("Escala: 2:1 ", 1000, height/2 + 370);

textSize(15);
fill(255);
textAlign(CENTER,CENTER);
text("Enero", 250, 100);
textSize(8);
text("0", 20, height/2);

for (int i = 0; i < objetos.length; i ++) {
  if(i>= 2 && i<= 32){
    objetos[i].enero();
   }

}

textSize(15);
fill(255);
textAlign(CENTER,CENTER);
text("Julio", 950, 100);
textSize(8);
text("0", 730, height/2);

for (int i = 0; i < objetos.length; i ++) {
  if(i>=183 && i<= 213){
    objetos[i].julio();

  }

}

textSize(15);
fill(255);
textAlign(CENTER,CENTER);
text("Diciembre", 250, height/2 + 40);
textSize(8);
text("0", 20, 700);

for (int i = 0; i < objetos.length; i ++) {
if(i>=334 && i<= 366){
  objetos[i].diciembre();
}
}

}
}

void keyPressed(){

  if (key == 'x'){
    next = 1;
  }

  if (key == 'c'){
    next = 2;
  }

  if (key == 'v'){
    next = 3;
  }

  if (key == 'b'){
    next = 4;
  }

  if (key == 'n'){
    next = 5;
  }

}
