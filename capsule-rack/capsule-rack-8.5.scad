$fs = 0.1;  // Don't generate smaller facets than 0.1 mm
$fa = 5;    // Don't generate larger angles than 5 degrees


i = 0; // instance # for different sizes
holeDiameter = 8.5; 
x = 8; //#cells wide
y = 14; //#cells long
z = 12; //dimensions of each cell

union() {
    for (a = [0:x], b =[0:z:(z*y)])
        difference(){
            rack(a,b); 
            hole(a,b);
            }
    for (e= [0:x:x], f =[0:y:y]) leg((e*z),(f*z));  
    }
    
module rack(a,b) {
    translate([a*z, b, 0])
    color("Green") 
    cube([z,z,3], center=true);
    }

module hole(a,b) {
    color("Blue") 
    translate([a*z,b,-11]) 
    cylinder(h=14, r=((holeDiameter/2)+(i*.12)));    
    }    

module leg(c,d) {
    translate([c,d,-1.5])
    color("Yellow")
    cube([5,5,8]);
    }