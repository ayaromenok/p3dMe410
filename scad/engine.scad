include <_std.scad>
include <../../lib/lib2.scad>
include <../../lib/lib2/lib2_motor.scad>
include <../../lib/lib2/lib2_prop.scad>
//include <../../lib/lib2/lib2_servo.scad>

//engine_mockup();

module engine_mockup(px=0,py=0,pz=0, rx=0,ry=0,rz=0, sx=1,sy=1,sz=1, mx=0,my=0,mz=0, _ps=ps){
    translate([(px),(py),pz])
    rotate([rx,ry,rz])
    scale([sx,sy,sz])
    mirror([mx,my,mz]){   
        blMotor2212(50,0,0, 0,90,0);
        rotate([60,0,0])
            if (_ps==204)
                prop8040_3(70,0,0, 0,90,0);
            else if(_ps==178)
                prop7040_3(70,0,0, 0,90,0);
            else if(_ps==130)
                prop5147_3(70,0,0, 0,90,0);
    }//transform
}//module
