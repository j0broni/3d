$fs = 0.1;  // Don't generate smaller facets than 0.1 mm
$fa = 5;    // Don't generate larger angles than 5 degrees



holeDiameter = 8.5;

 for (a =[0:3])difference(){rack(a); hole(a);};

     
module rack(a) {
    translate([a*12, 0, 0])
    color("Green") 
    cube([12,12,3], center=true);
    }

module hole(a) {
    color("Blue") 
    translate([a*12,0,-11]) 
    cylinder(h=14, r=((holeDiameter/2)+(a*.12)));    
    }    

