import processing.opengl.*;
import igeo.*;

void setup(){
  size(600,600, IG.GL);
  IG.duration(500);
  MyAgent agent007 = new MyAgent(IG.v(0,0,0), IG.v(0,2,0));
}
class MyAgent extends IAgent{
  IVec pos, dir;
  
  MyAgent(IVec p, IVec d){
    pos= p;
    dir= d;
    
    
    
   }
  
  void update(){
    IVec pos2= pos.cp(dir);
    IVec dir2= dir.cp();
    dir2.rot(IG.zaxis, IRand.get(-PI*0.4, PI*0.5));
    dir2.rot(IG.yaxis, IRand.get(-PI*0.4, PI*0.5));
    dir2.rot(IG.xaxis, IRand.get(-PI*0.4, PI*0.5));
    new ICurve(pos,pos2).clr(0);
    new MyAgent(pos2,dir2);
    del();
    
  
}

}

