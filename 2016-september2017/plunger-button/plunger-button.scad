$fs = 0.1;  // Don't generate smaller facets than 0.1 mm
$fa = 5;    // Don't generate larger angles than 5 degrees

//tubeHole();
//tube();

holeDiameter = 4.2;

union() {
    difference() {
        buttonTop();
        thumbRest();
    }
    difference() {
        plungerBase();
        plungerHole();   
    }    
}
module buttonTop() {
    color("White") translate([0,0,4]) cylinder(h=8, r=8, center=true);
    }    
    
module thumbRest() {
    color("Orange") translate([0,0,9]) resize(newsize=[15,15,7]) sphere(r=1, center=true);
    }
    
module plungerBase() {
    color("Yellow") translate([0,0,-10]) cylinder(h=11, r=3.25);
    }
    
module plungerHole() {
    color("Blue") translate([0,0,-11]) cylinder(h=14, r=(holeDiameter/2));    
    }    

