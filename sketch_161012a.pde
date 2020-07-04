import igeo.*;
import igeo.p.*;
import igeo.io.*;
import igeo.gui.*;


import processing.opengl.*;
import igeo.*;

size(600,600,IG.GL);

//IG.open("base fixed Rhino 4.3dm");

//IPoint p1 = new IPoint(0,0,0).clr(255,60,70);
//IPoint p2 = new IPoint(10,10,10).clr(0,80,255);

//new ICurve(p1,p2);

//double [] [] controlpoints01 = {{-50,20,0}, {-60,60,60}, {80,0,0}, {20,30,45}, {0,0,100}, {100,50,-30}};

//new ICurve(controlpoints01,2).clr(50,60,255);

IVec v1 = new IVec(10,0,30);
IVec v2 = new IVec(90,40,30);

v1. show().clr(10,20,255);
v2. show().clr(10,60,255);
