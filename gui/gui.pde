import controlP5.*;
import processing.serial.*;

Serial port;
ControlP5 cp5;
PFont font;


void setup(){
  size(400,300);
  font = createFont("Consolas",20);
  cp5 = new ControlP5(this);
  port = new Serial(this, "COM4", 9600);
  // adding buttons
  cp5.addButton("red")
  .setPosition(160, 90)
  .setSize(75,40)
  .setFont(font)
  .setColorBackground(color(255,0,0))
  ;
  
  cp5.addButton("blue")
  .setPosition(160, 140)
  .setSize(75,40)
  .setFont(font)
  .setColorBackground(color(0,0,255))
  ;
  
  cp5.addButton("green")
  .setPosition(160, 190)
  .setSize(75,40)
  .setFont(font)
  .setColorBackground(color(0,255,0))
  ;
  
  cp5.addButton("alloff")
  .setPosition(160, 240)
  .setSize(75,40)
  .setFont(font)
  .setColorBackground(color(0,0,0))
  ;
}

void draw(){
  background(50,45,56);
  fill(255,255,255);
  textFont(font);
  text("LED Controller", 121,50);  
}


void red(){
  port.write('r');
}

void blue(){
  port.write('b');
}

void green(){
  port.write('g');
}

void alloff(){
  port.write('f');
}
