include <../../lib/lib2.scad>

floatHiSpeed_front_v3_top(sx=0.5,sy=0.5,sz=0.5);

module floatHiSpeed_front_v3(px=0,py=0,pz=0, rx=0,ry=0,rz=0, sx=1,sy=1,sz=1, mx=0,my=0,mz=0){
    translate([(px),(py),pz])
    rotate([rx,ry,rz])
    scale([sx,sy,sz])
    mirror([mx,my,mz]){   
       // }//union
    }//transform
}//module
