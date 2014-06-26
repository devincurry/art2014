import processing.pdf.*;

import toxi.color.*;
import toxi.util.datatypes.*;

float w = 300;
float wQtr = w/4;
float wThird = w/3;
float wHalf = w/2;
float h = 300;
float hQtr = h/4;
float hHalf = h/2;
float hThird = h/3;

TColor white = TColor.newHSV(1, 0, 1);
TColor black = TColor.newHSV(.65, 1, .1);


void setup() {

  size (1000, 800);
  //beginRecord(PDF, "mumbai01.pdf"); 
  colorMode(HSB, 1, 1, 1, 1);

  smooth();
  background(white.hue(), white.saturation(), white.brightness());
  //background(black.hue(), black.saturation(), black.brightness());
  translate(width/3, height/4);
  //translate(0, 200);
  strokeCap(SQUARE);

  letterW();

  //endRecord();
}

void gradLines() {
  stroke(black.hue(), black.saturation(), black.brightness());
  strokeWeight(2);
  for (float y1 = 1; y1 <= h; y1 = y1 + y1/20) {
    line(0, y1, w, y1);
  }
  line(0, h-1, w, h-1);
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
  gradLines();
  noStroke();
  fill(white.hue(), white.saturation(), white.brightness());
  triangle(wThird*2, -1, w+2, -1, w+2, hThird);
  rect(wThird, h/6, wQtr, h/4);
  rect(wThird, h*5/8, wQtr, h/4);
}

void letterC() {
  gradLines();
  noStroke();
  fill(white.hue(), white.saturation(), white.brightness());
  triangle(-1, -1, wThird, -1, -1, hThird);
  rect(wThird, hThird, wHalf, hHalf);
  rect(wHalf+wQtr, hHalf, wQtr+2, hQtr+2);
}

void letterD() {
  gradLines();
  noStroke();
  fill(white.hue(), white.saturation(), white.brightness());
  triangle(wThird*2, -1, w+2, -1, w+2, hThird);
  rect(wQtr, hQtr, wThird+2, hHalf+2);
}

void letterE() {
  gradLines();
  noStroke();
  fill(white.hue(), white.saturation(), white.brightness());
  rect(wThird, hQtr, w, hThird/2);
  rect(wThird, hThird+hThird, w, hThird/2);
}

void letterF() {
  gradLines();
  noStroke();
  fill(white.hue(), white.saturation(), white.brightness());
  rect(wThird, hQtr, w, hThird/2);
  rect(wThird, hThird+hThird, w, hHalf);
}

void letterG() {
  gradLines();
  noStroke();
  fill(white.hue(), white.saturation(), white.brightness());
  triangle(-1, -1, wThird, -1, -1, hThird);
  rect(wThird, hHalf, wQtr, hThird);
  rect(wThird, hThird, w, hQtr);
}

void letterH() {
  gradLines();
  noStroke();
  fill(white.hue(), white.saturation(), white.brightness());
  rect(wThird, 0, wThird, hThird);
  rect(wThird, hThird+hThird, wThird, hHalf);
}

void letterI() {
  gradLines();
  noStroke();
  fill(white.hue(), white.saturation(), white.brightness());
  rect(wThird, -2, wThird+wThird+3, h+3);
}

void letterJ() {
  gradLines();
  noStroke();
  fill(white.hue(), white.saturation(), white.brightness());
  rect(wThird, 0, wThird, hThird+hThird);
  rect(-1, -1, wThird+1, hHalf);
}

/*
void letterK() {
 gradLines();
 noStroke();
 fill(white.hue(), white.saturation(), white.brightness());
 rect(wThird, 0, wThird, hThird);
 rect(wThird, hThird+hThird, wThird, hHalf);
 }
 */

void letterL() {
  gradLines();
  noStroke();
  fill(white.hue(), white.saturation(), white.brightness());
  //rect(wThird, 0, wThird, hThird+hThird);
  rect(wThird, -1, wThird+wThird+2, hThird+hThird);
}

void letterM() {
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

void letterN() {
  gradLines();
  noStroke();
  fill(white.hue(), white.saturation(), white.brightness());
  rect(-3, -2, wThird+wThird, h+3);
  stroke(black.hue(), black.saturation(), black.brightness());
  strokeWeight(2);
  noFill();
  strokeCap(SQUARE);
  for (int x1 = 0; x1 <= w; x1 = x1 + 10) {
    line(wThird, 0, x1, h);
  }
}

void letterO() {
  gradLines();
  noStroke();
  fill(white.hue(), white.saturation(), white.brightness());
  //  rect(wThird, hThird, wThird, hThird);
  rect(wQtr, hQtr, wHalf, hHalf+2);
}

void letterP() {
  gradLines();
  noStroke();
  fill(white.hue(), white.saturation(), white.brightness());
  rect(wThird, hQtr, wThird, hQtr);
  rect(wThird, hThird+hThird, w, hHalf);
}

void letterQ() {
  gradLines();
  noStroke();
  fill(white.hue(), white.saturation(), white.brightness());
  rect(wQtr, hQtr, wThird, hThird);
  triangle(wThird*2, hHalf+hQtr, w, h+1, wThird*2, h+1); 
  rect(0, hHalf+hQtr, wThird*2, hHalf);
}

void letterR() {
  gradLines();
  noStroke();
  fill(white.hue(), white.saturation(), white.brightness());
  rect(wQtr, hQtr, wThird, hThird);
  triangle(wHalf, hHalf+hQtr, w, h+1, wHalf, h+1); 
  rect(wQtr, hHalf+hQtr+2, wThird, hHalf);
}

void letterT() {
  gradLines();
  noStroke();
  fill(white.hue(), white.saturation(), white.brightness());
  rect(0, hThird, wThird+3, h+3);
  rect(wThird*2, hThird, wThird+3, h+3);
}

void letterU() {
  gradLines();
  noStroke();
  fill(white.hue(), white.saturation(), white.brightness());
  rect(wThird, -1, wThird, hThird*2);
}

void letterV() {
  gradLines();
  noStroke();
  fill(white.hue(), white.saturation(), white.brightness());
  rect(wThird, -1, wThird, hThird*2);
  triangle(wHalf, h+1, 0, h+1, 0, hThird*2);
  triangle(wHalf, h+1, w, h+1, w, hThird*2);
}
/*
void letterW() {
  gradLines();
  noStroke();
  fill(white.hue(), white.saturation(), white.brightness());
  rect(wThird, -1, wThird, hThird*2);
  triangle(wHalf, h+1, 0, h+1, 0, hThird*2);
  triangle(wHalf, h+1, w, h+1, w, hThird*2);
}
*/
