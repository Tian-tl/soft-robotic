import processing.opengl.*;
import igeo.*;

void setup(){
  
  size(600,600,IG.GL);
  IG.duration(25);
  MyAgent agent007 = new MyAgent(new IVec(0,0,0));
  
  }
  class MyAgent extends IAgent{
    IVec pos;
    MyAgent(IVec p) {pos=p;}
    
    
  
  
  void update (){
    
    new IBox(pos,10,20,10).clr(20,30,255).scale(3);
    new MyAgent(pos.dup().add(10,10,10));
    del();
    
  }}
