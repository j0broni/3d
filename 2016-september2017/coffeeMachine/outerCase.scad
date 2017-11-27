$fs = 0.1;  // Don't generate smaller facets than 0.1 
$fa = 5;    // Don't generate larger angles than 5 degrees
difference() {
    x = 118.7; // x/y dimensions for inside of case
    h = 113; // height of the inside of the case 
    z = 3; // thickness of walls 
    s = 9; // depth of 'saddles'
    outside(x, h, z, s);
    inside(x, h, z, s);
    cableSlot();
    logo();    
    saddleSlot(x, h, z, s);
}

module inside(x, h, z, s) {
    translate([0,0,(h/2)-(z/2) -.2 - s])color("Purple") cube([x, x, h + s], center=true);
    }
    
module outside(x, h, z, s) {
    translate([0,0,(h/2)-s + z])color("Green") cube([x + (z * 2),x + (z * 2),(h + s) -z], center=true);
    }    
    
module cableSlot() {
    translate([60,0,5])color("Red") cube([20,20,90], center=true); 
    }    

module logo(x) {
        translate([-68.94 - 1.9,0,58]) rotate([90,0,90]) scale([3.2,3.2,3.2]) color("Purple") import("/Users/jrutherford/Desktop/coffeeMachine/logo.stl");    
    }    
    
module saddleSlot(x, h, z, s) {
    translate([-x/2 ,-x,-s -1]) cube([x, x*2, s+1]);
    }     