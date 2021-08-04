include <_std.scad>
include <../../lib/lib2.scad>
//include <../../lib/lib2/ext/motor.scad>
//include <../../lib/lib2/ext/prop.scad>
include <../../lib/lib2/ext/servo.scad>

//wing_mockup();

module wing_mockup(px=0,py=0,pz=0, rx=0,ry=0,rz=0, sx=1,sy=1,sz=1, mx=0,my=0,mz=0, _ps=ps){
    translate([(px),(py),pz])
    rotate([rx,ry,rz])
    scale([sx,sy,sz])
    mirror([mx,my,mz]){
        translate([0,0, _ps*2.47/2])     
        yCyl(0, _ps*2.47, rb=_ps/2/5,rt=_ps/6/5, sx=5);        
    }//transform
}//module
