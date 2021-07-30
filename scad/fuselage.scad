include <_std.scad>
include <../../lib/lib2.scad>
//include <../../lib/lib2/lib2_motor.scad>
//include <../../lib/lib2/lib2_prop.scad>
include <../../lib/lib2/lib2_servo.scad>

//fuselage_mockup();

module fuselage_mockup(px=0,py=0,pz=0, rx=0,ry=0,rz=0, sx=1,sy=1,sz=1, mx=0,my=0,mz=0, _ps=ps){
    translate([(px),(py),pz])
    rotate([rx,ry,rz])
    scale([sx,sy,sz])
    mirror([mx,my,mz]){        
        yCyl(0,_ps*2, -_ps*2/2,0,0, 0,-90,0, rb=_ps/4/2,rt=_ps/10/2, sx=2);        
        yCyl(_ps/4/2,_ps, _ps/2,0,0, 0,-90,0,  sx=2);
        yCyl(0,_ps*0.5, _ps*2.5/2,0,0, 0,90,0, rb=_ps/4/2,rt=_ps/8/2, sx=2);        
    }//transform
}//module
