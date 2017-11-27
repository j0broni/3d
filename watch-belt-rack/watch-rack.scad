$fs = 0.1;  // Don't generate smaller facets than 0.1 mm
$fa = 5;    // Don't generate larger angles than 5 degrees

module base() {
    color("Blue")cube([150, 20, 3.5]);
    }
    
module hook() {
    union() {
        color("White")cube([8,4,11]);
        color("White")translate([0,0,8])cube([8,8,3]);
        }
    }    

module screwHoles() {
        translate([8,14,-1])cylinder(r=1.2, h=20);
        translate([142,14,-1])cylinder(r=1.2, h=20);

    }
difference(){
    union(){    
        base();
        for (a = [ 0 : 30 : 140 ]) translate([a + 10,0,0]) hook();
        }
    screwHoles();
}

