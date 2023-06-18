//Florencia hocquart 
//comision 1
//94747/4

PImage ilusionoptica;
void setup (){
  size (800,400); 
 ilusionoptica = loadImage("ilusionoptica.png");
}

void draw (){
  println ("x:", mouseX, "y;", mouseY); 
  image(ilusionoptica, 0,0,400,400);
  noStroke();
  fill(255);
  for (int i = 0; i < 14 ; i++){
      float colorV = ColorByN(i,0,255,0,255);
     if (i % 2 == 0){
       fill (colorV);
     }else{
       fill(255 - colorV);      
     }
    for (int j = 0 ; j < 18 ; j ++){  
      if (i%2 == 0 ) {
        fill(0);
      }else{
        fill(255);
      }
    }
     quad( 400, i * 15, 400,400,400,400,800-i *30, i * 15);
     triangle (800, 0, 800, 400 - i* (200/18),400+(i*25),400-i*(200/18));
    }
  }
