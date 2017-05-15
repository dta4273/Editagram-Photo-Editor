PImage img;
float scale = 50;
int filw = 0;
float rotation = 0;

void setup() {
  size(400, 400);
  img = loadImage("natgeoduck.jpg");
}

void draw() {
  background(0);
  translate(width/2, height/2);
  float factor = scale/100;
//  translate(width/2, height/2);
  
    //Scale up/down and Rotate
    rotate(rotation);
    if (keyPressed && (key == CODED)) {
      if (keyCode == UP) {
        scale += 1;
      }
      if (keyCode == DOWN) {
        scale += -1;
      }
      if (keyCode == RIGHT) {
        rotation += PI/180;
      }
      if (keyCode == LEFT) {
        rotation -= PI/180;
}
    }
  
  imageMode(CENTER);
  image(img, 0, 0, (945*factor), (531*factor)); //Draws image
  
  if (filw>0) {
      filter(GRAY);
    }
    
  //Filters
  if (keyPressed) {
    //Reset
    if ((key == 'x') || (key == 'X')) {
      noTint();
      filw = 0;
      rotation = 0;
      scale = 50;
    }
    //Red Filter
        if ((key == 'r') || (key == 'R')) {
      tint(255, 0, 0);
      filw = 0;
    }
    //Green
    if ((key == 'g') || (key == 'G')) {
      tint(0, 255, 0);
      filw = 0;
    }
    //Blue Filter
    if ((key == 'b') || (key == 'B')) {
      tint(0, 0, 255);
      filw = 0;
    }
    //Black and White Filter
    if ((key == 'w') || (key == 'W')) {
      filw = 1;
    }
  }
}