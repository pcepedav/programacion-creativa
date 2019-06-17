/*Certamen de Programación Creativa
Visualización de Datos
Gianfranco Bozzo*/


// Array de objetos de mi clase
Clase[] objetos;

//Variables
int index;
int index2=1;
float rmaximo=23.5;
float rmedio=22.7;
float rminimo=21.5;
boolean humedad=false;
boolean temperatura=false;
boolean rocio=false;
String titulo= "Certamen 2 Programación Creativa";
String subtitulo= "Gianfranco Bozzo";
String opciones= "1)=Temperatura por Meses-2)=Punto de rocio Semanas-3)=Humedad por Dias";


// Objeto tabla para manejar la base de datos
Table tabla;

void setup() {
  size(1000, 600);
  // cargar la base de datos con el parámetro de cabecera
  tabla = loadTable("baseDatos2015.csv", "header");

  // inicalizamos el array con la cantidad de filas del archivo
  int total = tabla.getRowCount(); //entrega el largo de la base de datos
  objetos = new Clase[total];

  // Con un contador podemos pasar por cada fila del archivo
  for (int i = 0; i < total; i++) {
    // Creamos un nuevo objeto del tipo TableRow con la información de cada fila
    TableRow row = tabla.getRow(i);


    // En la base de datos del ejemplo son 4, pero acá se muestran 3
    String dia = row.getString("D");
    String ano = row.getString("A");
    String mes = row.getString("M");
    int humedadmaxima = row.getInt("Max Humidity");
    int humedadmedia=row.getInt("Mean Humidity");
    int humedadminima = row.getInt("Min Humidity");

    // Con esas variables construyo un objeto
    objetos[i] = new Clase(ano, mes, dia, humedadmaxima, humedadmedia,humedadminima);
  }
}

/*Skecth*/
void draw(){
  background(125);
  fill(255);
  textSize(25);
  text(titulo, 300,height/2);
  textSize(20);
  text(subtitulo, 400, 330);
  textSize(15);
  text(opciones, 210,350);

  //Función que define la aparicion/desaparicion y cambio de una visualización a otra//
  if (humedad==true){
    line(width/2,0,width/2,height);
    noStroke();
    objetos[index].humedadmax();

    } else if (temperatura==true){
      for(int i=0;i<12;i++){
        objetos[i].temperaturamax(i);
        stroke(0);
        line(width/2,0,width/2,height);
      }
      } else if (rocio==true){
        for(int i=0;i<12;i++){
          objetos[index2].rociomes(index2);
          objetos[index2].rociop(index2);

        }
      }
    }

    /*Llamar a cada visualizacion; cada visualizacion se llama con los numeros desde
    el 1 al 3, partiendo desde el 1 la visualización mas general hasta el 3 con la
    visualización mas especifica. */
    /*Para la visualización 2 se utilizan las teclas "a" y "s", siendo "a" un reinicio
    a la semana 1 y "s" para ir avanzando a las semanas posteriores. En el caso de la
    visualizacion 3, se utilizan aparte las teclas "q" y "w* para navegar por los dias
    siendo "q" un reinicio al dia 1 y "w" para ir avanzandoa a los dias posteriores.*/
    void keyPressed(){
      if(key=='q'){
        index=2;
        } else if(key=='w'){
          if(index>=364){
            index=0;
            } else {
              index++;
            }
          }
          if(key=='a'){
            index2=1;
            } else if(key=='s'){
              if(index2>=52){
                index2=0;
                } else {
                  index2++;
                }
              }
              if(key=='3'){
                humedad=!humedad;
                } else if(key=='1'){
                  temperatura=!temperatura;
                  } else if(key=='2'){
                    rocio=!rocio;
                  }
                }
