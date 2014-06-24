import processing.pdf.*;

import toxi.color.*;
import toxi.util.datatypes.*;

/*
float w = 300;
 float wThird = w/3;
 float wHalf = w/2;
 float h = 400;
 float hHalf = h/2;
 float hThird = h/3;
 */

float w = 300;
float wQtr = w/4;
float wThird = w/3;
float wHalf = w/2;
float h = 300;
float hHalf = h/2;
float hThird = h/3;

//float hueVal = .35;
float hueVal = 0.07;
float alphaVal = .9;
float satVal = 1;
float bright1 = 1;
float bright2 = .75;
float bright3 = .5;

//color randomizer
float randomBright = random(0, 2);

void setup() {

  size (1700, 900);
  beginRecord(PDF, "mumbai01.pdf"); 
  colorMode(HSB, 1, 1, 1, 1);

  //color palette
  TColor black = TColor.newHSV(.65, 1, .1);
  TColor white = TColor.newHSV(1, 0, 1);

  smooth();
  background(white.hue(), white.saturation(), white.brightness());
  //background(black.hue(), black.saturation(), black.brightness());
  translate(50, 250);
  //translate(0, 200);




  //noStroke();
  stroke(black.hue(), black.saturation(), black.brightness());
  strokeWeight(2);
  noFill();
  strokeCap(SQUARE);
  //M1
  for (int x1 = 0; x1 <= wThird*2; x1 = x1 + 10) {
    line(wThird, 0, x1, h);
  }
  for (int x2 = 100; x2 <= w; x2 = x2 + 10) {
    line(wThird*2, 0, x2, h);
  }

  //U
  pushMatrix();
  translate(w, 0);
  for (float y1 = 1; y1 <= h; y1 = y1 + y1/20) {
    line(0, y1, w, y1);
  }
  line(0, h-1, w, h-1);
  noStroke();
  fill(white.hue(), white.saturation(), white.brightness());
  rect(wThird, -1, wThird, hThird*2);
  popMatrix();

  //M2
  stroke(black.hue(), black.saturation(), black.brightness());
  strokeWeight(2);
  noFill();
  pushMatrix();
  translate(w*2, 0);
  for (int x1 = 0; x1 <= wThird*2; x1 = x1 + 10) {
    line(wThird, 0, x1, h);
  }
  for (int x2 = 100; x2 <= w; x2 = x2 + 10) {
    line(wThird*2, 0, x2, h);
  }
  popMatrix();

  //B
  pushMatrix();
  translate(w*3, 0);
  for (float y1 = 1; y1 <= h; y1 = y1 + y1/20) {
    line(0, y1, w, y1);
  }
  line(0, h-1, w, h-1);
  noStroke();
  fill(white.hue(), white.saturation(), white.brightness());
  triangle(wThird*2, -1, w+1, -1, w+1, hThird);
  rect(wThird, h/6, wQtr, h/4);
  rect(wThird, h*5/8, wQtr, h/4);
  popMatrix();

  //A
  stroke(black.hue(), black.saturation(), black.brightness());
  strokeWeight(2);
  noFill();
  pushMatrix();
  translate(w*4, 0);
  for (int aX = 0; aX <= w; aX = aX + 10) {
    line(wHalf, 0, aX, h);
  }
  popMatrix();

  //I
  pushMatrix();
  translate(w*5, 0);
  for (float y1 = 1; y1 <= h; y1 = y1 + y1/20) {
    line(0, y1, w/3, y1);
  }
  line(0, h-1, w/3, h-1);
  noStroke();
  fill(white.hue(), white.saturation(), white.brightness());
  popMatrix();

  endRecord();
}
