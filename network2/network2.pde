ArrayList<Vertices> vertices;

void setup(){
 size(640,360);
 smooth(8);
 vertices = new ArrayList<Vertices>();
 
/* for(int i = 0; i < 10; i++){
  vertices.add(new Vertices(random(width), random(height))); 
 }*/
}

void draw(){
  background(51);
  for(Vertices v : vertices){
    v.display();
    v.connect();
  }
  
  
}

void mousePressed(){
   float x = mouseX;
   float y = mouseY;
   vertices.add(new Vertices(x, y));
  }