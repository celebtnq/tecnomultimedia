PImage img;
PImage imagen2;
PImage imagen3;
PImage imagen4;
PImage imagen5;
PImage imagen6;
int estado = 1;
PFont fuente;
int posY;
int posY2;
int posX;
int posX2;
int posX3;


void setup () {  
  size (640, 480);
  background (0);
  img = loadImage ("llavecitaTierna.png");
  imagen2 = loadImage ("case2.jpg");
  imagen3 = loadImage ("case3.jpg");
  imagen4 = loadImage ("case4.png");
  imagen5 = loadImage ("cora.jpg");
  imagen6 = loadImage ("pavo.png");
  frameRate(30);
  fuente = createFont("Gill Sans MT Negrita", 24);
  textFont (fuente);
  posY = 500; 
  posY2 = 450;
  posX = -50;
  posX2 = 650;
  posX3 = -50;
reiniciar();
  
  }
  
  void reiniciar() {
  estado = 1;
  posY = 500; 
  posY2 = 450;
  posX = -50;
  posX2 = 650;
  posX3 = -50;
  background(0);
  image(img, 50, 50);
  fill(mouseX, mouseY, 0, 255);
  textSize(48);
  text("Hola, soy una llave!", 203, 185); 
}

void mousePressed () {
  println("coordenada" +mouseX+ - +mouseY );
  
  frameCount = 0;
  
  if (estado == 6) { if (mouseX>200 && mouseX<451 && mouseY>340 && mouseY < 405) {
    estado = 1;
    reiniciar();
      background (0);
    }
  }
  
  switch (estado) {
    
    case 1:
      if (mouseX > 373 && mouseX < 625 && mouseY > 340 && mouseY < 405) {
        estado = 2;
      }
    }
      }

void draw () {
  
  println("frameCount: " + frameCount);
  
 switch (estado) {
   case 0:
  background(0);
  image(img, 50, 50);
  break; 
   
   case 1:

    
  image (img, 50, 50);
  fill (mouseX, mouseY, 0, 255);
  textSize (48);
  text ("Hola, soy una llave!", 203, 185); 

//rect grande
  if (mouseX>373 && mouseX<625 && mouseY>340 && mouseY<405) {
    fill(214, 89, 210);
  } else {
    fill(100);
  }
  rect(373, 340, 252, 65);
 
 //rect chiquito
  if (mouseX>373 && mouseX <625 && mouseY >340 && mouseY <405) {
    fill( 255, 148, 252 );
  } else {
    fill(70);
  }
  noStroke();
  rect(378, 345, 242, 55);

//texto
  if (mouseX > 373 && mouseX < 625 && mouseY >340 && mouseY < 405) {
    fill (255); 
  } else {
    fill (150);
  }
  textSize (18);
  text ("INICIAR PRESENTACIÓN", 385, 379);
  
  break;
  
  case 2:
  background (255);
  image(imagen2, 0, 0, 721, 480);
 //ojo izq
 fill (255);
 ellipse (174,153, 50,50);
 fill (0);
 ellipse (187,163, 30, 30);
 //ojo der
 fill (255);
 ellipse (242,164, 50, 50);
 fill (0);
 ellipse (255, 174, 30,30);
 
 
 textSize (32);
 textLeading (35);
 fill (255);
 text ("Puedo ajustar y\naflojar tuercas\ny tornillos con\nmucha precisión", 314, posY);
 if (posY > 220) {posY -=5; 
}

if (frameCount >= 100) {estado = 3;
}

break;
case 3:
background (0);
background (0);
image (imagen3, 0, 0, 855, 480);

textSize (32);
fill ( 209, 23, 204 );
text ("Existen muuuchos tipos de llaves", mouseX, mouseY);

textSize (27);
fill (0);
text("DE ESTRELLA ACODADA", posX, 146);
if (posX< width*2){
posX += 2;
}

textSize (27);
fill (0);
text("DE CARRACA", posX2, 176);
if (posX2 < width*2){
posX2 -= 2;
}

textSize (27);
fill (0);
text("DE VASO/DADO", posX, 206);
if (posX< width*2){
posX += 2;
}

textSize (27);
fill (0);
text("TUBO", posX2, 236);
if (posX2 < width*2){
posX2 -= 2;
}

textSize (27);
fill (0);
text("ETC", posX, 266);
if (posX< width*2){
posX += 2;
}

textSize (27);
fill (0);
text("ETCCCC", posX2, 296);
if (posX2 < width*2){
posX2 -= 2;
}

if (frameCount >= 250) {estado = 4;
}

break;
case 4:
background (255);
image (imagen4, -10, -50, 600, 600);
image (imagen5, 405, 350, 150,150);
fill (0, 0, 0, mouseY);
text ("Pero igual, aguanten\nlas llaves mixtas.", 351, posY2);
if (posY2 > 338) {posY2 -=5; 
}

if (frameCount >= 360) {estado = 5;
}

break;
case 5:
background (0);
fill (250, 0, 243, mouseX);
textSize (36);
text ("FRIENDLY REMINDER:", 140, 75);
textSize (20);
text ("(no seas pavx)", 285, 105);

fill  (252, 221, 251);
text ("elegí la llave correcta,\nporque puedo redondear\nla tuerca y después no\nvas a poder aflojarla :(", posX3, 220);
if (posX3< width*2){
posX3 += 2;
}

image (imagen6, posX3, 300, 150, 150);
if (posX3< width*2){
  posX3 += 2;
  }

if (frameCount >= 530) {estado = 6;
}

break;
case 6:
background (0);
textSize (200);
fill (255, 185, 253);
text ("FIN.", 153, 240);

//rect grande
  if (mouseX>200 && mouseX<451 && mouseY>340 && mouseY<405) {
    fill(214, 89, 210);
  } else {
    fill(100);
  }
  rect(200, 340, 252, 65);
 
 //rect chiquito
  if (mouseX>200 && mouseX <451 && mouseY >340 && mouseY <405) {
    fill( 195, 148, 252 );
  } else {
    fill(70);
  }
  noStroke();
  rect(205, 345, 242, 55);
  
  //texto
  if (mouseX > 200 && mouseX < 451 && mouseY >340 && mouseY < 405) {
    fill (255); 
  } else {
    fill (150);
  }
  textSize (18);
  text ("VER OTRA VEZ", 256, 379);
 
}
}
