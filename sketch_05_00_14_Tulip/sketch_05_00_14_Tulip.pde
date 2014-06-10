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

  size (700, 900);

  w = width;
  h = height;
  wHalf = width/2;
  hHalf = height/2;
  wThird = width/3;
  hThird = height/3;
  wQuart = width/4;
  hQuart = height/4;

  beginRecord(PDF, "flower_pink_v02.pdf"); 
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
  fill(.93, 1, .8, .4);

  //    triangle(wQuart, 0, wQuart, hHalf+50, wHalf+wQuart, h-50);
  quad(wQuart, 0, wQuart, h-100, wHalf, h, wHalf-50, 150);

  quad(wHalf-50, 0, wQuart, hThird, wHalf, h, wThird*2, 150);

  quad(wHalf, 0, wQuart, hThird, wHalf, h, wThird*2+50, 200);

  quad(wHalf-100, hQuart, wHalf+50, hQuart, wHalf, h, wThird, h-100);

  quad(wHalf-100, hHalf, wHalf, hThird, wHalf+wQuart, hHalf, wHalf, h);

  pushMatrix();
  translate(-100, 100);
  quad(wHalf+wQuart, 100, wHalf+wQuart+100, 150, w, hThird*2, wThird*2, h-150);
  popMatrix();

  quad(100, hHalf, 100, hHalf+150, wQuart, h-100, wHalf, h);

  //leaf
  //  fill(5, 1, .8, 1);
  //  quad(wHalf, h, wHalf+wQuart, h, wHalf+50, h-150, wHalf+wQuart, hHalf+hQuart);
  endRecord();
}

