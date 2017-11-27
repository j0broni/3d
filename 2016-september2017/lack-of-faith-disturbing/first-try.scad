$fs = 0.1;  // Don't generate smaller facets than 0.1 mm
$fa = 2;    // Don't generate larger angles than 5 degrees

module logo () {import("/Users/jrutherford/Desktop/lack-of-faith-disturbing/lack1.stl", center=true);}
module logo2() {import("/Users/jrutherford/Desktop/lack-of-faith-disturbing/lack2.stl");}
module logo3() {import("/Users/jrutherford/Desktop/lack-of-faith-disturbing/lack3.stl");}

module negative() {
    
    union() {
    translate([5,-10,-2])cube([20,20,5]);
    translate([-11,-25.2,-2])cube([20,20,5]);
    rotate([0,0,30])translate([-24,-10,-2])cube([20,20,5]);
    }
  }    
        
module rod(x) {translate([-3, x, 0])cylinder(r=.1, h=.2);} 

module plate() {
{translate([0,0,2.6])cube([30,30,5.1], center=true);

}}
    
    union() {
        rod(-.5);
        rod(-1.5);
difference() {
    logo3();
    plate();
    negative();
}
}
