include <_std.scad>
include <../../lib/lib2.scad>
//include <../../lib/lib2/lib2_motor.scad>
//include <../../lib/lib2/lib2_prop.scad>
include <../../lib/lib2/lib2_servo.scad>

//tail_V_mockup();
//tail_H_mockup();
//tail_H_mockup(my=1);

module tail_V_mockup(px=0,py=0,pz=0, rx=0,ry=0,rz=0, sx=1,sy=1,sz=1, mx=0,my=0,mz=0, _ps=ps){
    translate([(px),(py),pz])
    rotate([rx,ry,rz])
    scale([sx,sy,sz])
    mirror([mx,my,mz]){        
       translate([0,0, _ps*0.85/2])     
        yCyl(0, _ps*0.85, rb=_ps*0.35/5,rt=_ps*0.35/2/5, sx=5);          
    }//transform
}//module

module tail_H_mockup(px=0,py=0,pz=0, rx=0,ry=0,rz=0, sx=1,sy=1,sz=1, mx=0,my=0,mz=0, _ps=ps){
    translate([(px),(py),pz])
    rotate([rx,ry,rz])
    scale([sx,sy,sz])
    mirror([mx,my,mz]){        
       translate([0,-_ps*0.85/2, _ps*0.15 ])     
        rotate([90,0,0])
        yCyl(0, _ps*1.75/2, rb=_ps*0.25/5,rt=_ps*0.25/1.4/5, sx=5);          
    }//transform
}//module
