int position_x ,position_y ,size,lineLength , speed ;
color randomColor = color(random(255),random(255),random(255)) ;  
void setup() {
  size(300,400) ;
  position_x = 100 ;
  position_y = 200 ;
  size = 50 ;
  lineLength = 50 ;
  speed = 1 ;
}

void draw() {
  background(255) ;
  create_balloons() ;
  move() ;
  stop_move() ;
  
}

void create_balloons() {
   ellipse(position_x,position_y,size,size) ;
   line(position_x,position_y+size/2,position_x,position_y+size/2+lineLength) ;
   fill(randomColor) ; 
  
}

void move() {
  position_y -= speed ;
  if (position_y == 0-(lineLength+size)) {
     position_y = 400+size ;
    
  }
}

void stop_move() {
  if (mousePressed) {
    position_y = position_y + speed ; 
    
  }
  
}

  
