class Vertices{
  PVector location;
  
  Vertices(float x, float y){
    location = new PVector(x, y);
  }
  
  void display(){
   stroke(255);
   fill(255);
   ellipse(location.x , location.y, 15, 15);
  }
  
  void connect(){
    
  ArrayList<Vertices> reached = new ArrayList<Vertices>();
  ArrayList<Vertices> unreached = new ArrayList<Vertices>();

  for (Vertices v : vertices) {
    unreached.add(v);
  }

  reached.add(unreached.get(0));
  unreached.remove(0);

  while (unreached.size() > 0) {
    float record = 100000;
    int rIndex = 0;
    int uIndex = 0;
    for (int i = 0; i < reached.size(); i++) {
      for (int j = 0; j < unreached.size(); j++) {
        Vertices v1 = reached.get(i);
        Vertices v2 = unreached.get(j);
        float d = dist(v1.location.x, v1.location.y, v2.location.x, v2.location.y);
        if (d < record) {
          record = d;
          rIndex = i;
          uIndex = j;
        }
      }
    }
    stroke(255);
    strokeWeight(2);
    Vertices p1 = reached.get(rIndex);
    Vertices p2 = unreached.get(uIndex);
    line(p1.location.x,p1.location.y, p2.location.x, p2.location.y);
    reached.add(p2);
    unreached.remove(uIndex);
    
  }
  }

}