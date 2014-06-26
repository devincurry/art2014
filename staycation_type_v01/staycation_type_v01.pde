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
float hQtr = h/4;
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

  size (1000, 800);
  //beginRecord(PDF, "mumbai01.pdf"); 
  colorMode(HSB, 1, 1, 1, 1);

  //color palette
  TColor black = TColor.newHSV(.65, 1, .1);
  TColor white = TColor.newHSV(1, 0, 1);

  smooth();
  background(white.hue(), white.saturation(), white.brightness());
  //background(black.hue(), black.saturation(), black.brightness());
  translate(width/3, height/4);
  //translate(0, 200);

  letterJ();

  //endRecord();
}

void letterA() {
  TColor black = TColor.newHSV(.65, 1, .1);
  TColor white = TColor.newHSV(1, 0, 1);
  //A
  stroke(black.hue(), black.saturation(), black.brightness());
  strokeWeight(2);
  noFill();
  for (int aX = 0; aX <= w; aX = aX + 10) {
    line(wHalf, 0, aX, h);
  }
}

void letterB() {
  TColor black = TColor.newHSV(.65, 1, .1);
  TColor white = TColor.newHSV(1, 0, 1);
  strokeWeight(2);

  for (float y1 = 1; y1 <= h; y1 = y1 + y1/20) {
    line(0, y1, w, y1);
  }
  line(0, h-1, w, h-1);
  noStroke();
  fill(white.hue(), white.saturation(), white.brightness());
  triangle(wThird*2, -1, w+2, -1, w+2, hThird);
  rect(wThird, h/6, wQtr, h/4);
  rect(wThird, h*5/8, wQtr, h/4);
}

void letterC() {
  TColor black = TColor.newHSV(.65, 1, .1);
  TColor white = TColor.newHSV(1, 0, 1);
  strokeWeight(2);

  for (float y1 = 1; y1 <= h; y1 = y1 + y1/20) {
    line(0, y1, w, y1);
  }
  line(0, h-1, w, h-1);
  noStroke();
  fill(white.hue(), white.saturation(), white.brightness());
  triangle(-1, -1, wThird, -1, -1, hThird);
  rect(wThird, hThird, wHalf, hHalf);
  rect(wHalf+wQtr, hHalf, wQtr+2, hQtr+2);
}

void letterD() {
  TColor black = TColor.newHSV(.65, 1, .1);
  TColor white = TColor.newHSV(1, 0, 1);
  strokeWeight(2);

  for (float y1 = 1; y1 <= h; y1 = y1 + y1/20) {
    line(0, y1, w, y1);
  }
  line(0, h-1, w, h-1);
  noStroke();
  fill(white.hue(), white.saturation(), white.brightness());
  triangle(wThird*2, -1, w+2, -1, w+2, hThird);
  rect(wQtr, hQtr, wThird+2, hThird+2);
}

void letterE() {
  TColor black = TColor.newHSV(.65, 1, .1);
  TColor white = TColor.newHSV(1, 0, 1);
  strokeWeight(2);

  for (float y1 = 1; y1 <= h; y1 = y1 + y1/20) {
    line(0, y1, w, y1);
  }
  line(0, h-1, w, h-1);
  noStroke();
  fill(white.hue(), white.saturation(), white.brightness());
  /*
  rect(wThird, h/6, w, h/4);
   rect(wThird, h*5/8, w, h/4);
   */
  rect(wThird, hQtr, w, hThird/2);
  rect(wThird, hThird+hThird, w, hThird/2);
}

void letterF() {
  TColor black = TColor.newHSV(.65, 1, .1);
  TColor white = TColor.newHSV(1, 0, 1);
  strokeWeight(2);

  for (float y1 = 1; y1 <= h; y1 = y1 + y1/20) {
    line(0, y1, w, y1);
  }
  line(0, h-1, w, h-1);
  noStroke();
  fill(white.hue(), white.saturation(), white.brightness());
  /*
  rect(wThird, h/6, w, h/4);
   rect(wThird, h*5/8, w, h/4);
   */
  rect(wThird, hQtr, w, hThird/2);
  rect(wThird, hThird+hThird, w, hHalf);
}

void letterG() {
  TColor black = TColor.newHSV(.65, 1, .1);
  TColor white = TColor.newHSV(1, 0, 1);
  strokeWeight(2);

  for (float y1 = 1; y1 <= h; y1 = y1 + y1/20) {
    line(0, y1, w, y1);
  }
  line(0, h-1, w, h-1);
  noStroke();
  fill(white.hue(), white.saturation(), white.brightness());
  triangle(-1, -1, wThird, -1, -1, hThird);
  rect(wThird, hHalf, wQtr, hThird);
  rect(wThird, hThird, w, hQtr);
}

void letterH() {
  TColor black = TColor.newHSV(.65, 1, .1);
  TColor white = TColor.newHSV(1, 0, 1);
  strokeWeight(2);

  for (float y1 = 1; y1 <= h; y1 = y1 + y1/20) {
    line(0, y1, w, y1);
  }
  line(0, h-1, w, h-1);
  noStroke();
  fill(white.hue(), white.saturation(), white.brightness());
  rect(wThird, 0, wThird, hThird);
  rect(wThird, hThird+hThird, wThird, hHalf);
}

void letterI() {
  TColor black = TColor.newHSV(.65, 1, .1);
  TColor white = TColor.newHSV(1, 0, 1);
  strokeWeight(2);

  for (float y1 = 1; y1 <= h; y1 = y1 + y1/20) {
    line(0, y1, w/3, y1);
  }
  line(0, h-1, w/3, h-1);
  noStroke();
  fill(white.hue(), white.saturation(), white.brightness());
}

void letterJ() {
  TColor black = TColor.newHSV(.65, 1, .1);
  TColor white = TColor.newHSV(1, 0, 1);
  strokeWeight(2);

  for (float y1 = 1; y1 <= h; y1 = y1 + y1/20) {
    line(0, y1, w, y1);
  }
  line(0, h-1, w, h-1);
  noStroke();
  fill(white.hue(), white.saturation(), white.brightness());
  rect(wThird, 0, wThird, hThird+hThird);
  rect(-1,-1,wThird+1,hHalf);
}

void letterK() {
  TColor black = TColor.newHSV(.65, 1, .1);
  TColor white = TColor.newHSV(1, 0, 1);
  strokeWeight(2);

  for (float y1 = 1; y1 <= h; y1 = y1 + y1/20) {
    line(0, y1, w, y1);
  }
  line(0, h-1, w, h-1);
  noStroke();
  fill(white.hue(), white.saturation(), white.brightness());
  rect(wThird, 0, wThird, hThird);
  rect(wThird, hThird+hThird, wThird, hHalf);
}

void letterM() {
  TColor black = TColor.newHSV(.65, 1, .1);
  TColor white = TColor.newHSV(1, 0, 1);

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
}

void letterU() {
  TColor black = TColor.newHSV(.65, 1, .1);
  TColor white = TColor.newHSV(1, 0, 1);

  noStroke();
  for (float y1 = 1; y1 <= h; y1 = y1 + y1/20) {
    line(0, y1, w, y1);
  }
  line(0, h-1, w, h-1);
  noStroke();
  fill(white.hue(), white.saturation(), white.brightness());
  rect(wThird, -1, wThird, hThird*2);
}

