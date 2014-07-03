import processing.pdf.*;

import toxi.color.*;
import toxi.util.datatypes.*;

float w = 500;
float wQtr = w/4;
float wThird = w/3;
float wHalf = w/2;
float h = 500;
float hQtr = h/4;
float hHalf = h/2;
float hThird = h/3;
float thick = 150;
float space = 75;
//color palette
TColor black = TColor.newHSV(.65, 1, .1);
TColor white = TColor.newHSV(1, 0, 1);


void setup() {

  size (800, 800);
  //beginRecord(PDF, "CoDivvyLogoA01.pdf"); 
  colorMode(HSB, 1, 1, 1, 1);

  smooth();
  background(white.hue(), white.saturation(), white.brightness());
  //background(black.hue(), black.saturation(), black.brightness());
  //stroke(black.hue(), black.saturation(), black.brightness());
  //strokeWeight(2);
  translate(wQtr, hHalf);

  ellipseMode(CENTER);
  noStroke();

  fill(black.hue(), black.saturation(), black.brightness());
  ellipse(wHalf, hHalf, w, h);

  fill(white.hue(), white.saturation(), white.brightness());
  ellipse(wHalf, hHalf, w-thick, h-thick);

  fill(black.hue(), black.saturation(), black.brightness());
  ellipse(wHalf, hHalf, w-space-thick, h-space-thick);

  //endRecord();
}

