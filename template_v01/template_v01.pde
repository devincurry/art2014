import processing.pdf.*;
import toxi.color.*;
import toxi.util.datatypes.*;

float hueVal = .8;
float alphaVal = .4;

float w;
float h;
float wHalf;
float hHalf;
float wThird;
float hThird;
float wQuart;
float hQuart;

void setup() {

  size (900, 900);

  w = width;
  h = height;
  wHalf = width/2;
  hHalf = height/2;
  wThird = width/3;
  hThird = height/3;
  wQuart = width/4;
  hQuart = height/4;

  //beginRecord(PDF, "pic.pdf"); 
  colorMode(HSB, 1, 1, 1, 1);



  //color palette
  TColor black = TColor.newHSV(.65, 1, .1);
  TColor white = TColor.newHSV(1, 0, 1);

  smooth();
  background(white.hue(), white.saturation(), white.brightness());
  // background(black.hue(), black.saturation(), black.brightness());

  strokeWeight(3);
  //  stroke(black.hue(), black.saturation(), black.brightness());
  stroke(white.hue(), white.saturation(), white.brightness());
  noStroke();
  fill(1, 1, 1, 1);

  //endRecord();
}

