void setup () {
  
  size (800,400);
  background (255,255,255);
  
PImage img;
img = loadImage("llave.png");
image(img, 400, -25, 300, 440);
  
  }
  
  void draw () {
    
    color g = color(230);
    color go = color (180);
    color b = color(255,255,255);
    color n = color(50,50,50);
    color sn = color(70,70,70);

//rectangulo
    fill(go);
    noStroke();
    rect (380,115,28,150);
    
//rectangulo sombra
    fill(g, 150);
    noStroke();
    rect (385,120,20,130);
   
//media curva baja grande
   fill (go);
   stroke(220,20);
   bezier (381,254,300,370,475,373,406,254);
   
//media curva baja chiquita
   fill (g);
   bezier (375,284,340,360,455,360,420,284);
   
//curva alta chiquita
    fill (g);
    stroke(220, 20);
    bezier (375,285,380,265,415,265,420,285);
   
//elipse semi negra
    fill(sn);
    ellipse (398,310,45,50); 
    
//elipse negra
    fill (n);
    ellipse (398,310,35,40);
    
//elipse blanca
    fill(b);
    ellipse (392, 310, 18,30);
    noStroke();

//sombra parte izq llave
    fill (go);
    bezier (409,116,370,142,350,90,371,67);

//parte izq llave
    fill (g);
    bezier (371,67, 365,90, 370, 130, 410,116);

//sombra parte der llave
    fill (go);
    beginShape();

    vertex(404,60);
    vertex(406,96);
    vertex(390,98);
    vertex(397,85);
    vertex(395,60);
    vertex(404,60);

endShape();

//triang que tapa
    fill (g);
    triangle (391,94, 408, 88, 410, 116);

//bezier acomoda
    fill (go);
    bezier (385, 96, 401, 105, 410, 90, 404, 85);

//parte derecha llave
    fill (g);
    bezier (404,60,430,74,435,102,410,116);

//curva detalle
    fill (b);
    ellipse (389, 77, 15,40);

//triang detalle
    fill (b);
    triangle (374,67,382,88,385,77);

//linea sombrita
    stroke (0, 30);
    strokeWeight (2);
    line (395, 92, 404, 92);

//elipse detalle
    fill (go);
    noStroke ();
    ellipse (395, 255, 25, 12);

    }
    
void mousePressed () {
  
  println("vertex("+mouseX+","+mouseY+"),");
  
  }
