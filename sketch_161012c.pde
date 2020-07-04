import processing.opengl.*;
import igeo.*;

void setup(){
  
  size(600,600,IG.GL);
 IG.duration(50);
 int num =10;
 
 for(int i=0; i<num; i++){
   
   new MyAgent(IRandom.pt(30,30,0),5).clr(0.5);
   
}
IG.transparent();
}
class MyAgent extends IAgent{
  IVec pos;
  double size;
  
  MyAgent(IVec pt, double sz){
    pos = pt;
    size = sz;
  
  
}

public void update(){
 
  new IBox(pos, size, size, size).clr(this.clr());
  
  int childNum = IRandom.getInt(0,2);
  
  for (int i=0; i< childNum; i++){
   
    double nextSize = IRandom.get(1,4);
  IVec nextPos = pos.dup();
  double dir = IRandom.getInt(0,5);
  if(dir==0) nextPos.add(size,0,0);
  else if (dir==1) nextPos.add(-nextSize,0,0);
  else if (dir==2) nextPos.add(0,size,0);
  else if (dir==3) nextPos.add(0,-nextSize,0);
  else if (dir==4) nextPos.add(0,0,size);
   
   int r = clr().getRed() + IRandom.getInt(-10,10);
   int g = clr().getGreen() + IRandom.getInt(-10,10);
   int b = clr().getBlue() + IRandom.getInt(-10,10);
   
   //int r = 255;
   //int g = 10;
   //int b = 85;
    new MyAgent(nextPos, nextSize).clr(r,g,b);
   

  }
  del();
}

}
