PShape globe;
PShape globe_1;
PShape globe_2;
PShape globe_3;
PShape globe_4;
PShape globe_5;
PShape globe_6;
PShape globe_7;
PShape globe_8;
float theta;
PImage bg;
int y ;

void setup() {
  size(679, 385, P3D);  
  noStroke();
  bg = loadImage("background.jpg");
  
    //meload texture
  PImage img = loadImage("matahari.jpg");
  PImage img_1 = loadImage("merkurius.jpg");
  PImage img_2 = loadImage("venus.jpg");
  PImage img_3 = loadImage("bumi.jpg");
  PImage img_4 = loadImage("mars.jpg");
  PImage img_5 = loadImage("jupiter.jpg");
  PImage img_6 = loadImage("saturnus.jpg");
  PImage img_7 = loadImage("uranus.jpg");
  PImage img_8 = loadImage("neptunus.jpg");
  
  //membuat shape
  globe = createShape(SPHERE, 100);
  globe_1 = createShape(SPHERE, 50);
  globe_2 = createShape(SPHERE, 50);
  globe_3 = createShape(SPHERE, 50);
  globe_4 = createShape(SPHERE, 50);
  globe_5 = createShape(SPHERE, 50);
  globe_6 = createShape(SPHERE, 50);
  globe_7 = createShape(SPHERE, 50);
  globe_8 = createShape(SPHERE, 50);
  
    //memasukan texture
  globe.setTexture(img);
  globe_1.setTexture(img_1);
  globe_2.setTexture(img_2);
  globe_3.setTexture(img_3);
  globe_4.setTexture(img_4);
  globe_5.setTexture(img_5);
  globe_6.setTexture(img_6);
  globe_7.setTexture(img_7);
 globe_8.setTexture(img_8);
 }

void draw() {
  background(bg);  
  stroke(226,204,0);
  line(0,y,width,y);
  y++;
  if (y > height){
    y = 0;
  }

  //matahari
  translate(width/2, height/2);
  rotateY(radians(theta));
  shape(globe);
  theta += 0.1;  
  
  //merkurius
  translate(200,0);
  rotateY(radians(theta));
  shape(globe_1);
  
    //venus
  translate(400,0);
  rotateY(radians(theta));
  shape(globe_2);  
  
  //bumi
  translate(600,0);
  rotateY(radians(theta));
  shape(globe_3);
 
    //mars
  translate(800,0);
  rotateY(radians(theta));
  shape(globe_4);
  
    //jupirter
  translate(1000,0);
  rotateY(radians(theta));
  shape(globe_5);  
  
  //saturnus
  translate(1200,0);
  rotateY(radians(theta));
  shape(globe_6);
  
    //uranus
  translate(1400,0);
  rotateY(radians(theta));
  shape(globe_7);  
  
  //neptunus
  translate(1600,0);
  rotateY(radians(theta));
  shape(globe_8);
  }
