include <_std.scad>
include <engine.scad>
include <wing.scad>
include <fuselage.scad>
include <tail.scad>


fuselage_mockup(-ps/1.4);

wing_mockup(-ps/6,0,0, 85,0,0);
wing_mockup(-ps/6,0,0, 95,0,0,  mz=1);

engine_mockup(ps/2, ps*1.5/2,0);
engine_mockup(ps/2, -ps*1.5/2,0)
;
tail_V_mockup(-ps*2.4,0,-ps*0.1);
tail_H_mockup(-ps*2.4,0,-ps*0.1);
tail_H_mockup(-ps*2.4,0,-ps*0.1, my=1);
