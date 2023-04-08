//hocquart maria florencia 
//comision1

PImage roca;
void setup(){
  size (800,400);
  roca = loadImage("roca.jpg");
  
}
void draw(){
  background(134,223,248);
  image(roca,400, 0,400,400);
  
  //nubecitas
  noStroke();
  fill(129,129,129);
  ellipse(0, 0,550,100);
  fill(178,181,155);
  ellipse(0,50,400,80);
  fill(182,176,142);
  ellipse(323,0,150,50);
  fill(129,129,129);
  ellipse(290 ,140,220,70);
  fill(172,163,106);
  fill(178,181,155);
   fill(182,176,142);
  ellipse(10,170,250,50);
  fill(186,185,210);
  ellipse(190,130,160,60);
  fill(174,173,195);
  ellipse(170,87,120,50);
  
  
  //piedrad del fondo
  fill(125,106,53);
  triangle(360,290,380,230,395,280);
  rect(320,230, 30,150);
  
 //pastito
 
 fill(95,4,37);
 rect(0,260,200,200);
 rect(200,280,200,180);
 fill(14,100,0);
 rect(0,300,400,400);
 
 //piedras 
 fill(128,110,85);
 quad(150,360,150,180,260,50,290,350);
 fill(170,156,140);
 quad(170,380,170,220,280,90,300,360);

  
  
  
}
