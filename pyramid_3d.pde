PImage imgSuits;
PImage imgJoker;

void pyramid(float s) {
  textureMode(NORMAL);
  beginShape(TRIANGLES);
  texture(imgSuits);
  // ==== FRONT ==== //
  vertex(-s, -s, -s, -0.05, 1.0);
  vertex(s, -s, -s, 0.30, 1.0);
  vertex(0, 0, s, 0.125, 0.0);
  // ==== RIGHT ==== //  
  vertex(-s, s, -s, 0.20, 1.0);
  vertex(-s, -s, -s, 0.55, 1.0);
  vertex(0, 0, s, 0.375, 0.0);
  // ==== BACK ==== //  
  vertex(s, s, -s, 0.45, 1.0);
  vertex(-s, s, -s, 0.8, 1.0);
  vertex(0, 0, s, 0.625, 0.0);
  // ==== LEFT ==== //
  vertex(s, -s, -s, 0.70, 1.0);
  vertex(s, s, -s, 1.05, 1.0);
  vertex(0, 0, s, 0.885, 0.0);
  endShape();
  
  beginShape(QUADS);
  texture(imgJoker);
  // ==== SQUARE BASE ==== //
  vertex(-s, -s, -s, 1, 0);
  vertex(s, -s, -s, 0, 0);
  vertex(s, s, -s, 0, 1);
  vertex(-s, s, -s, 1, 1);
  endShape();
}

void setup() {
  //fullScreen(P3D); // For Android mode
  size(800, 800, P3D);
  strokeWeight(4.0);
  imgSuits = loadImage("suits.png");
  imgJoker = loadImage("joker.png");
}

void draw() {
  background(0);
  translate(width/2, height/2);
  rotateX(map(mouseY, 0, height, TWO_PI, -TWO_PI));
  rotateY(map(mouseX, 0, width, -TWO_PI, TWO_PI));
  pyramid(150); // Adjust size parameter as needed for Android
}
