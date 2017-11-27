$fs = 0.1;  // Don't generate smaller facets than 0.1 mm
$fa = 5;    // Don't generate larger angles than 5 degrees

module base() {
    color("Blue")cube([150, 20, 3.5]);
    }
    
module hook() {
    union() {
        color("White")cube([12,4,13]);
        color("White")translate([0,0,10])cube([12,8,5]);
        }
    }    

module screwHoles() {
        translate([8,14,-1])cylinder(r=1.2, h=20);
        translate([142,14,-1])cylinder(r=1.2, h=20);

    }
difference(){
    union(){    
        base();
        for (a = [ 0 : 40 : 140 ]) translate([a + 10,0,0]) hook();
        }
    screwHoles();
}

