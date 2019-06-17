class Clase {
  float maxtemp, minhum, mintemp;


  Clase(float maxtemp, float minhum, float mintemp) {
    this.maxtemp = maxtemp;
    this.minhum = minhum;
    this.mintemp = mintemp;
  }

  void minimahum() {
    fill(250, 30, 60);
    rotate(radians(mouseY));//permite dividir los valores en distintas escalas al año a ttraves del movimiento del mouse en Y
    rect (300, 300, 20, minhum);
  }
  void minimatemp() {
    fill(20, 50, 250, 35);
    rotate(radians(mouseY));  
    rect(300, 300, 20, mintemp + minhum);
  }
  void maxtemp() {
    fill(250, 20, 250, 35);
    rotate(radians(mouseY));  
    rect(300, 300, 20, mintemp + minhum);
  }
}
