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

  size (1500, 900);
  //beginRecord(PDF, "newGrab81.pdf"); 
  colorMode(HSB, 1, 1, 1, 1);

  //color palette
  TColor black = TColor.newHSV(.65, 1, .1);
  TColor white = TColor.newHSV(1, 0, 1);

  smooth();
  background(white.hue(), white.saturation(), white.brightness());
  //background(black.hue(), black.saturation(), black.brightness());
  //translate(100, 200);
  translate(0, 200);




  //noStroke();
  stroke(black.hue(), black.saturation(), black.brightness());
  strokeWeight(2);
  noFill();

  //M
  for (int x1 = 0; x1 <= wThird*2; x1 = x1 + 10) {
    line(wHalf/2, 0, x1, h);
  }
  for (int x2 = 100; x2 <= w; x2 = x2 + 10) {
    line(wHalf+wHalf/2, 0, x2, h);
  }




  //U
  pushMatrix();
  translate(w, 0);
  fill(black.hue(), black.saturation(), black.brightness());
  rect(0, 0, wThird, h);
  rect(0, hThird*2, w, hThird);
  rect(wThird*2, 0, wThird, h);



  popMatrix();

  //M
  pushMatrix();
  translate(w*2, 0);
  for (int x1 = 0; x1 <= wThird*2; x1 = x1 + 10) {
    line(wHalf/2, 0, x1, h);
  }
  for (int x2 = 100; x2 <= w; x2 = x2 + 10) {
    line(wHalf+wHalf/2, 0, x2, h);
  }


  popMatrix();

  //stroke(black.hue(), black.saturation(), black.brightness());
  //outline();
  //endRecord();
}


void outline() {
  noFill();
  strokeWeight(3);

  //V
  triangle(0, 0, wHalf, h, wHalf, 0); //left
  triangle(wHalf, h, w, 0, w+(wThird*2), 0); //right
  //triangle(wHalf,hThird*2,wHalf,h,w,hHalf); //bottom
  triangle(wHalf, hThird*2, wHalf, h, w+(wThird*2), 0); //bottom

  //E
  pushMatrix();
  translate(w, 0);
  triangle(0, 0, 0, h, wHalf, h); //bottom-left
  triangle(0, hHalf, 0, h, wHalf, hHalf); //crosspiece
  triangle(0, h, w, hThird*2, w+wThird, h); //bottom-right
  triangle(0, 0, w, hThird, w*2, 0); //top-right
  popMatrix();

  //S
  pushMatrix();
  translate(w*2, 0);
  triangle(0, 0, w, 0, w, hThird); //top-right
  triangle(0, 0, 0, hThird, w, hThird*2); //mid-top
  triangle(0, hThird, w, hThird*2, w, h); //mid-bottom
  triangle(w, hThird*2, w, h, 0, h); //bottom-right
  popMatrix();
}

void whiteMatte() {
  /*
  fill(1, 0, 1, alphaVal);
   noStroke();
   
   //V
   triangle(0, 0, wHalf, h, wHalf, 0); //left
   triangle(wHalf, h, w, 0, w+(wThird*2), 0); //right
   //triangle(wHalf,hThird*2,wHalf,h,w,hHalf); //bottom
   triangle(wHalf, hThird*2, wHalf, h, w+(wThird*2), 0); //bottom
   
   //E
   pushMatrix();
   translate(w, 0);
   triangle(0, 0, 0, h, wHalf, h); //bottom-left
   triangle(0, hHalf, 0, h, wHalf, hHalf); //crosspiece
   triangle(0, h, w, hThird*2, w+wThird, h); //bottom-right
   triangle(0, 0, w, hThird, w*2, 0); //top-right
   popMatrix();
   
   //S
   pushMatrix();
   translate(w*2, 0);
   triangle(0, 0, w, 0, w, hThird); //top-right
   triangle(0, 0, 0, hThird, w, hThird*2); //mid-top
   triangle(0, hThird, w, hThird*2, w, h); //mid-bottom
   triangle(w, hThird*2, w, h, 0, h); //bottom-right
   popMatrix();
   */
}

