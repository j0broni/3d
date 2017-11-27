// CSG-modules.scad - Basic usage of modules, if, color, $fs/$fa

// Global resolution
$fs = 0.1;  // Don't generate smaller facets than 0.1 mm
$fa = 5;    // Don't generate larger angles than 5 degrees

difference(){
    union(){
    base();/*
        riser1();
        riser2();
            rotate([0,0,90]) riser1();
            rotate([0,0,270]) riser1();
            rotate([0,0,90]) riser2();
            rotate([0,0,270]) riser2();*/        
    }
    //baseSlot();
    rotate([0,0,90]) translate([37.5,0,0]) baseSlot();
    rotate([0,0,270]) translate([37.5,0,0]) baseSlot();
    darkside();

}


//rotate([0,0,90]) translate([37.5,0,0]) baseASlot();

module base() {
    color("Blue") cylinder(h=2, r=75, center=true);
    }
    
module baseSlot() {
    color("Red") translate([0,0,-3]) cube([76, 2, 6]); 
    }
   
module riser1() {
    color("Yellow") translate([37.5,2,1]) cube([34,2,4]);
    }    
    
module riser2() {
    color("Green") translate([37.5,-2,1]) cube([34,2,4]);
    }
    
module darkside() {
    translate([-250,0,-250])cube([500,500,500]);
    }