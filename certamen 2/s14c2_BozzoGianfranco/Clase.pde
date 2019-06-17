class Clase {
	String ano, dia, mes;
	int humedadmaxima, humedadmedia, humedadminima;
	String enero = "Enero";
	String febrero = "Febrero";
	String marzo = "Marzo";
	String abril = "Abril";
	String mayo = "Mayo";
	String junio = "Junio";
	String julio = "Julio";
	String agosto = "Agosto";
	String septiembre = "Septiembre";
	String octubre = "Octubre";
	String noviembre = "Noviembre";
	String diciembre = "Diciembre";

	Clase(String ano, String mes, String dia, int humedadmaxima, int humedadmedia, int humedadminima) {
		this.ano = ano;
		this.mes = mes;
		this.dia = dia;
		this.humedadmaxima = humedadmaxima;
		this.humedadminima = humedadminima;
		this.humedadmedia = humedadmedia;

	}

	/* Función de datos sobre humedad*/
	void humedadmax() {
		//Definiciòn del fondo del sketch que representara los meses segun su color.//
		pushMatrix();
		translate(width / 2, height / 2);
		if (index > 0 && index <= 32) {
			background(163, 189, 49);
		} else if (index > 32 && index <= 60) {
			background(160, 191, 96);
		} else if (index > 60 && index <= 91) {
			background(112, 168, 59);
		} else if (index > 91 && index <= 121) {
			background(254, 238, 0);
		} else if (index > 121 && index <= 152) {
			background(203, 97, 32);
		} else if (index > 152 && index <= 182) {
			background(198, 72, 50);
		} else if (index > 182 && index <= 213) {
			background(118, 170, 219);
		} else if (index > 213 && index <= 244) {
			background(0, 46, 130);
		} else if (index > 244 && index <= 274) {
			background(74, 118, 178);
		} else if (index > 274 && index <= 305) {
			background(51, 101, 53);
		} else if (index > 305 && index <= 335) {
			background(79, 142, 58);
		} else {
			background(78, 116, 78);
		}
		// Creación de los cuadrados que representan la humedad maxima,media y minima//////
		//en orden de el mas grande a el mas pequeño respectivamente, siendo la intensidad/
		//del color de cada cuadrado su valor en la base de datos.//////////////////////////////////
		rotate(40.06);
		rectMode(CENTER);
		fill(0, 0, humedadmaxima);
		rect(0, 0, 422, 422);
		fill(0, 0, humedadmedia);
		pushMatrix();
		rotate(40.06);
		rect(0, 0, 299, 299);
		popMatrix();
		fill(0, 0, humedadminima);
		pushMatrix();
		rotate(50.25);
		rect(0, 0, 212, 212);
		popMatrix();
		popMatrix();
	}

	/*Función del promedio de la temperatura maxima y minima segun meses*/
	void temperaturamax(int index) {
		//Fondo del la visualización, siendo el lado izquierdo del promedio de la temperatura maxima////
		//segun fue calculado de forma manual y el lado derecho del promedio de la temperatura minima///
		//calculada de igual manera que la maxima.//////////////////////////////////////////////////////
		background(204, 133, 137);
		noStroke();
		fill(163, 187, 223);
		rect(width / 2, 0, width, height);
		//Rectangulos que se encuentran en el centro del ancho del sketch, su largo esta definido el el valor de//
		//su promedio y cada mes tiene asignado un color acorde a la estacion a la que pertenece./////////////////
		pushMatrix();
		translate(width / 2, 10);
		fill(163, 189, 49);
		rect(0, 0, -31 * 14, 30);
		rect(0, 0, 25 * 14, 30);
		popMatrix();
		pushMatrix();
		translate(width / 2, 50);
		fill(160, 191, 96);
		rect(0, 10, -31 * 14, 30);
		rect(0, 10, 26 * 14, 30);
		popMatrix();
		pushMatrix();
		translate(width / 2, 90);
		fill(112, 168, 59);
		rect(0, 20, -31 * 14, 30);
		rect(0, 20, 25 * 14, 30);
		popMatrix();
		pushMatrix();
		translate(width / 2, 130);
		fill(254, 238, 0);
		rect(0, 30, -32 * 14, 30);
		rect(0, 30, 26 * 14, 30);
		popMatrix();
		pushMatrix();
		translate(width / 2, 170);
		fill(203, 97, 32);
		rect(0, 40, -32 * 14, 30);
		rect(0, 40, 26 * 14, 30);
		popMatrix();
		pushMatrix();
		translate(width / 2, 210);
		fill(198, 72, 50);
		rect(0, 50, -32 * 14, 30);
		rect(0, 50, 27 * 14, 30);
		popMatrix();
		pushMatrix();
		translate(width / 2, 250);
		fill(118, 170, 219);
		rect(0, 60, -32 * 14, 30);
		rect(0, 60, 27 * 14, 30);
		popMatrix();
		pushMatrix();
		translate(width / 2, 290);
		fill(0, 46, 130);
		rect(0, 70, -33 * 14, 30);
		rect(0, 70, 27 * 14, 30);
		popMatrix();
		pushMatrix();
		translate(width / 2, 330);
		fill(74, 118, 178);
		rect(0, 80, -34 * 14, 30);
		rect(0, 80, 28 * 14, 30);
		popMatrix();
		pushMatrix();
		translate(width / 2, 370);
		fill(51, 101, 53);
		rect(0, 90, -33 * 14, 30);
		rect(0, 90, 27 * 14, 30);
		popMatrix();
		pushMatrix();
		translate(width / 2, 410);
		fill(79, 142, 58);
		rect(0, 100, -32 * 14, 30);
		rect(0, 100, 27 * 14, 30);
		popMatrix();
		pushMatrix();
		translate(width / 2, 450);
		fill(78, 116, 78);
		rect(0, 110, -32 * 14, 30);
		rect(0, 110, 27 * 14, 30);
		popMatrix();
	}

	/*Función del fondo del punto de rocio*/
	//Definicion de los valores para que el fondo del punto de rocio vaya cambiando acorde al numero de//
	//semana en l aque se encuentre la variable./////////////////////////////////////////////////////////
	void rociomes(int index2) {
		if (index2 > 0 && index2 <= 4) {
			background(163, 189, 49);
			textSize(22);
			fill(255);
			text(enero, 100, 100);
		} else if (index2 > 4 && index2 <= 8) {
			background(160, 191, 96);
			textSize(22);
			text(febrero, 100, 100);
		} else if (index2 > 8 && index2 <= 12) {
			background(112, 168, 59);
			textSize(22);
			text(marzo, 100, 100);
		} else if (index2 > 12 && index2 <= 16) {
			background(254, 238, 0);
			textSize(22);
			text(abril, 100, 100);
		} else if (index2 > 16 && index2 <= 20) {
			background(203, 97, 32);
			textSize(22);
			text(mayo, 100, 100);
		} else if (index2 > 20 && index2 <= 24) {
			background(198, 72, 50);
			textSize(22);
			text(junio, 100, 100);
		} else if (index2 > 24 && index2 <= 28) {
			background(118, 170, 219);
			textSize(22);
			text(julio, 100, 100);
		} else if (index2 > 28 && index2 <= 34) {
			background(0, 46, 130);
			textSize(22);
			text(agosto, 100, 100);
		} else if (index2 > 34 && index2 <= 40) {
			background(74, 118, 178);
			textSize(22);
			text(septiembre, 100, 100);
		} else if (index2 > 40 && index2 <= 44) {
			background(51, 101, 53);
			textSize(22);
			text(octubre, 100, 100);
		} else if (index2 > 44 && index2 <= 48) {
			background(79, 142, 58);
			textSize(22);
			text(noviembre, 100, 100);
		} else {
			background(78, 116, 78);
			textSize(22);
			text(diciembre, 100, 100);
		}
	}

	/*Función promedio maximo,medio y minimo del Punto de Rocio*/
	void rociop(int index2) {
		//Funciónes que establecen que valor deben tener las variables de punto de rocio maximo,//
		//medio y minimo segun el valor del index(semanas).///////////////////////////////////////
		if (index2 > 1 && index2 <= 2) {
			rmaximo = 23.5;
			rmedio = 22.7;
			rminimo = 21.5;
		} else if (index2 > 1 && index2 <= 2) {
			rmaximo = 23.5;
			rmedio = 22.7;
			rminimo = 19.4;
		} else if (index2 > 2 && index2 <= 3) {
			rmaximo = 23.1;
			rmedio = 22.7;
			rminimo = 22;
		} else if (index2 > 3 && index2 <= 4) {
			rmaximo = 23;
			rmedio = 22.2;
			rminimo = 21.4;
		} else if (index2 > 4 && index2 <= 5) {
			rmaximo = 24.1;
			rmedio = 22.5;
			rminimo = 21.7;
		} else if (index2 > 5 && index2 <= 6) {
			rmaximo = 24;
			rmedio = 22.7;
			rminimo = 21.5;
		} else if (index2 > 6 && index2 <= 7) {
			rmaximo = 23.8;
			rmedio = 23.1;
			rminimo = 22.1;
		} else if (index2 > 7 && index2 <= 8) {
			rmaximo = 23.4;
			rmedio = 22.2;
			rminimo = 21.5;
		} else if (index2 > 8 && index2 <= 9) {
			rmaximo = 23.5;
			rmedio = 22.5;
			rminimo = 21.5;
		} else if (index2 > 9 && index2 <= 10) {
			rmaximo = 22.7;
			rmedio = 22;
			rminimo = 21;
		} else if (index2 > 10 && index2 <= 11) {
			rmaximo = 23;
			rmedio = 22.1;
			rminimo = 21;
		} else if (index2 > 11 && index2 <= 12) {
			rmaximo = 23.5;
			rmedio = 22.7;
			rminimo = 21.7;
		} else if (index2 > 12 && index2 <= 13) {
			rmaximo = 23.8;
			rmedio = 22.7;
			rminimo = 22;
		} else if (index2 > 13 && index2 <= 14) {
			rmaximo = 23.8;
			rmedio = 22.8;
			rminimo = 19.5;
		} else if (index2 > 14 && index2 <= 15) {
			rmaximo = 24;
			rmedio = 23.1;
			rminimo = 22.8;
		} else if (index2 > 15 && index2 <= 16) {
			rmaximo = 24;
			rmedio = 23.1;
			rminimo = 22.4;
		} else if (index2 > 16 && index2 <= 17) {
			rmaximo = 25.1;
			rmedio = 24;
			rminimo = 23.2;
		} else if (index2 > 17 && index2 <= 18) {
			rmaximo = 24.4;
			rmedio = 23;
			rminimo = 22.5;
		} else if (index2 > 18 && index2 <= 19) {
			rmaximo = 24.1;
			rmedio = 23.2;
			rminimo = 22.7;
		} else if (index2 > 19 && index2 <= 20) {
			rmaximo = 24.4;
			rmedio = 23.5;
			rminimo = 23;
		} else if (index2 > 20 && index2 <= 21) {
			rmaximo = 24.5;
			rmedio = 23.5;
			rminimo = 22.8;
		} else if (index2 > 21 && index2 <= 22) {
			rmaximo = 25.2;
			rmedio = 24.1;
			rminimo = 23.8;
		} else if (index2 > 22 && index2 <= 23) {
			rmaximo = 25.8;
			rmedio = 24.4;
			rminimo = 23.4;
		} else if (index2 > 23 && index2 <= 24) {
			rmaximo = 26;
			rmedio = 24.4;
			rminimo = 23.8;
		} else if (index2 > 24 && index2 <= 25) {
			rmaximo = 26;
			rmedio = 24.5;
			rminimo = 22.8;
		} else if (index2 > 25 && index2 <= 26) {
			rmaximo = 25.8;
			rmedio = 24.5;
			rminimo = 23.8;
		} else if (index2 > 26 && index2 <= 27) {
			rmaximo = 25.8;
			rmedio = 25.1;
			rminimo = 24;
		} else if (index2 > 27 && index2 <= 28) {
			rmaximo = 26.5;
			rmedio = 25;
			rminimo = 23.8;
		} else if (index2 > 28 && index2 <= 29) {
			rmaximo = 25.8;
			rmedio = 24.5;
			rminimo = 23.5;
		} else if (index2 > 29 && index2 <= 30) {
			rmaximo = 26;
			rmedio = 24.4;
			rminimo = 21;
		} else if (index2 > 30 && index2 <= 31) {
			rmaximo = 26.7;
			rmedio = 25.7;
			rminimo = 23.8;
		} else if (index2 > 31 && index2 <= 32) {
			rmaximo = 26.2;
			rmedio = 24.8;
			rminimo = 23.8;
		} else if (index2 > 32 && index2 <= 33) {
			rmaximo = 25.2;
			rmedio = 23.8;
			rminimo = 22.7;
		} else if (index2 > 33 && index2 <= 34) {
			rmaximo = 25.4;
			rmedio = 24.1;
			rminimo = 23.4;
		} else if (index2 > 34 && index2 <= 35) {
			rmaximo = 25.7;
			rmedio = 24.8;
			rminimo = 23.5;
		} else if (index2 > 35 && index2 <= 36) {
			rmaximo = 25.1;
			rmedio = 24.2;
			rminimo = 23.4;
		} else if (index2 > 36 && index2 <= 37) {
			rmaximo = 25.7;
			rmedio = 24.5;
			rminimo = 23.7;
		} else if (index2 > 37 && index2 <= 38) {
			rmaximo = 25.8;
			rmedio = 25.4;
			rminimo = 24.2;
		} else if (index2 > 38 && index2 <= 39) {
			rmaximo = 25.7;
			rmedio = 24.7;
			rminimo = 24;
		} else if (index2 > 39 && index2 <= 40) {
			rmaximo = 26;
			rmedio = 24.7;
			rminimo = 23.5;
		} else if (index2 > 40 && index2 <= 41) {
			rmaximo = 25.1;
			rmedio = 24;
			rminimo = 23.5;
		} else if (index2 > 41 && index2 <= 42) {
			rmaximo = 25.5;
			rmedio = 24.4;
			rminimo = 23.7;
		} else if (index2 > 42 && index2 <= 43) {
			rmaximo = 25.4;
			rmedio = 24.4;
			rminimo = 22.5;
		} else if (index2 > 43 && index2 <= 44) {
			rmaximo = 25.4;
			rmedio = 24;
			rminimo = 23.1;
		} else if (index2 > 44 && index2 <= 45) {
			rmaximo = 25.2;
			rmedio = 24.1;
			rminimo = 22.8;
		} else if (index2 > 45 && index2 <= 46) {
			rmaximo = 24.5;
			rmedio = 23.2;
			rminimo = 22.5;
		} else if (index2 > 46 && index2 <= 47) {
			rmaximo = 24.4;
			rmedio = 23.7;
			rminimo = 23;
		} else if (index2 > 47 && index2 <= 48) {
			rmaximo = 25.2;
			rmedio = 24.1;
			rminimo = 23.4;
		} else if (index2 > 48 && index2 <= 49) {
			rmaximo = 24.4;
			rmedio = 23.5;
			rminimo = 22.8;
		} else if (index2 > 49 && index2 <= 50) {
			rmaximo = 24.2;
			rmedio = 23.5;
			rminimo = 23.2;
		} else if (index2 > 50 && index2 <= 51) {
			rmaximo = 24.2;
			rmedio = 23;
			rminimo = 19.4;
		} else {
			rmaximo = 23.5;
			rmedio = 22.8;
			rminimo = 22.1;
		}
		//Creación de las lineas que rotaran en un eje y representan el promedio del punto de rocio////
		//maximo, medio y minimo, siendo el primero las lineas mas oscuras y largas, el segundo las////
		//un poco mas largas y claras que las de el promedio maximo y las lineas mas cortas y claras///
		//las del promedio minimo//////////////////////////////////////////////////////////////////////
		pushMatrix();
		translate(width / 2, height / 2);
		for (float i = 0; i < rmaximo; i++) {
			rotate(PI / 34.0);
			stroke(0);
			line(0, 0, rmaximo * 12, 0);
		}
		for (float i = 0; i < rmedio; i++) {
			rotate(PI / 35.0);
			stroke(91, 91, 95);
			line(0, 0, rmedio * 12, 0);
		}
		for (float i = 0; i < rminimo; i++) {
			rotate(PI / 47.0);
			stroke(135, 134, 138);
			line(0, 0, rminimo * 12, 0);
		}
		popMatrix();
	}
}
