include <_std.scad>
include <engine.scad>
include <wing.scad>
include <fuselage.scad>
include <tail.scad>

assembly_mockup(py=-400,ps=130);
assembly_mockup(py=500,ps=204);

module assembly_mockup(px=0,py=0,pz=0, rx=0,ry=0,rz=0, sx=1,sy=1,sz=1, mx=0,my=0,mz=0, ps=ps){
    translate([(px),(py),pz])
    rotate([rx,ry,rz])
    scale([sx,sy,sz])
    mirror([mx,my,mz]){           
        fuselage_mockup(-ps/1.4, _ps=ps);

        wing_mockup(-ps/6,0,0, 85,0,0, _ps=ps);
        wing_mockup(-ps/6,0,0, 95,0,0,  mz=1, _ps=ps);

        engine_mockup(ps/2, ps*1.5/2,0,_ps=ps);
        engine_mockup(ps/2, -ps*1.5/2,0,_ps=ps);

        tail_V_mockup(-ps*2.4,0,-ps*0.1,_ps=ps);
        tail_H_mockup(-ps*2.4,0,-ps*0.1,_ps=ps);
        tail_H_mockup(-ps*2.4,0,-ps*0.1, my=1,_ps=ps);
    }//transform
}//module