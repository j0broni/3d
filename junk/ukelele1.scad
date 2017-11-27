// CSG-modules.scad - Basic usage of modules, if, color, $fs/$fa

// Global resolution
$fs = 0.1;  // Don't generate smaller facets than 0.1 mm
$fa = 5;    // Don't generate larger angles than 5 degrees

difference() {
    union(){
        base();
        back();
    }
    notch();
}
module base() {
    color("Orange") cube([7,5,1.1], center=true);
    }
    
module back() {
    color("Purple") translate([0,1,.6]) cube([7,1,2], center=true);
    }    
    
module notch() {
    color("White") translate([0,1,1.9]) rotate([90,0,0]) cylinder(h=2, r=.7, center=true);
    }    
