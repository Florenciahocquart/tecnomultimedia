// florencia hocquart
// 94747/4
// comision 1 sitio de interes
// tp1

//int estados;
String estado;
int c; //contador
PImage cloudgate1 ;
PImage cloudgate2 ;
PImage cloudgate3 ;
PImage cloudgate4 ;
PImage cloudgate5 ;
PImage cloudgate6 ;
PFont miFuentePorInterfaz ;
String text1 = " la escultura de cloud gate plateada reflejante \n ubicada en Millenium park,\n Chicago estados Unidos. ";
String text2 = "significa puerta a las nubes refleja \n el famoso horizonte de Chicago \n y las nubes del cielo";
String text3 = " es una escultura de 110 toneladas, \n hecha de placas de acero inoxidable altamente pulidas ";
String text4 = " mide 3.6 metros de altura y \n 20 metros de largo x 10 metros de alto en \n la parte del medio .";

void setup() {
  
  size( 640, 480 );  //resolucion tp1
  textAlign( CENTER, CENTER );
  textSize( 45 );
  fill(0);
  
  cloudgate1 = loadImage("cloudgate1.jpg");
  cloudgate2 = loadImage("cloudgate2.jpg");
  cloudgate3 = loadImage("cloudgate3.jpg");
  cloudgate4 = loadImage("cloudgate4.jpg");
  cloudgate5 = loadImage("cloudgate5.jpg");
  cloudgate6 = loadImage("cloudgate6.jpg");
  miFuentePorInterfaz = loadFont ("AmericanTypewriter-CondensedBold-48.vlw") ;
  
 
  estado = "inicio";
  
  frameRate( 60 );
}

void draw() {
  //
  //MAQUINA DE ESTADOS --
  //

  println(frameCount);
   
  if ( estado.equals("inicio") ) {
    image(cloudgate1, 0, 0);
    fill(255);
    textFont ( miFuentePorInterfaz) ;
    text( "CLOUD GATE ", 340, 50 );
    fill(80, 247, 86);
    circle( width/2, height/4*3, 100 );
     
   
    //
  } else if (estado.equals("p1") ) {
    image(cloudgate2, 0, 0);
    fill(255);
    textSize( 28 );
    text( text1 , frameCount , 150); 
 
    if (frameCount > width/2)
  frameCount = 320;
     
    //
    c++;  
    if( c >= 600 ){  
      estado = "p2";
      c = 0;  //RESET DE VARIABLE CONTADOR
      
    }
    //
  } else if (estado.equals("p2") ) {
    image(cloudgate3, 0, 0); 
    textSize(22);
    text( text2, 130, frameCount - 300 );
   if (frameCount > 500 )
   frameCount = 500;
   
    //
    c++;  //suma 1 per frame
   if( c >= 300 ){  // 60fps * 5seg = 300
      estado = "p3";
      c = 0;  //RESET DE VARIABLE CONTADOR
    }
    //
  } else if (estado.equals("p3") ) {
    image(cloudgate4, 0, 0);
    textSize (20);
    text( text3, frameCount - 500, 100 );
    if (frameCount > 800)
    frameCount = 820;
    
    c++;  
    if( c >= 840 ){  // 60fps * 5seg = 300
      estado = "p4";
      c = 0;  //RESET DE VARIABLE CONTADOR
    }
    //
  } else if (estado.equals("p4") ) {
    image(cloudgate5, 0, 0);
    fill(255);
    text( text4, 320, frameCount - 800 );
    if(frameCount > 1040)
    frameCount = 1040;
    //
  c++;  //suma 1 per frame
    if( c >= 1041 ){  // 60fps * 5seg = 300
      estado = "p5";
      c = 0;  //RESET DE VARIABLE CONTADOR
    }   
    //
  } else if (estado.equals("p5") ) {  
    image(cloudgate6, 0, 0);
    textSize(25);
    text(" espero que algún día pueda visitar \n esta hermosa escultura ", 320, 80);
    text("regresar al inicio", 500, 180);
    fill(58, 160, 62);
    rect( 270, 190, 100, 60);
       
   
  }
  println( estado );
}

void mousePressed() {
  // circle( width/2, height/4*3, 50 );  <-- de acá salen los datos
  if( estado.equals("inicio") ){
    if( dist(width/2, height/4*3, mouseX, mouseY) < 50/2 ){
      estado = "p1";
    }
  }
  if( estado.equals("p5") ){
    if( dist(270, 190, mouseX, mouseY) < 50/2 ){
      estado = "inicio";
    }
  }
}
