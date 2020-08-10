int position_x ,position_y ,size,lineLength ;
void setup() {
  size(300,400) ;
  position_x = 100 ;
  position_y = 200 ;
  size = 50 ;
  lineLength = 50 ;
}

void draw() {
  create_balloons() ;
  
}

void create_balloons() {
   ellipse(position_x,position_y,size,size) ;
   line(position_x,position_y+size/2,position_x,position_y+size/2+lineLength) ;
  
}
