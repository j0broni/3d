$fs = 0.1;  // Don't generate smaller facets than 0.1 mm
$fa = 5;    // Don't generate larger angles than 5 degrees

union() {
base();
pumpMount();
translate([-15,30,96])piMount();
}
module base (){
    
    difference() {
        union () { 
            bottom();
            sideMount(57.5, 8);
            sideMount(-57.5, 8);
            circularMount(29.6, 8);
            }
        tubeHole(2.22);
        }

        
        module bottom () {
            color("Yellow") cube ([118, 118, 2], center=true);
            }

        module sideMount(x,y) {
            color("Orange") translate([x, 0, -y/2]) cube([3, 118, y], center=true);
            }    

        module circularMount(r,h) {
            color("Orange") translate([0,0,-h/2]) cylinder(h=h, r=r, center=true);
            }
            
        module tubeHole(r) {
            color("Purple") cylinder(h=20, r=r, center=true);
            }
}

module pumpMount() {    
    
translate ([35, 18, 50.5]) rotate([180,0,270]) 
    union() {
    difference() {
    outerHousing();
    innerHousing();
    sideSlot();       
        }
        mountingBracket();
    }
    module outerHousing() {color("Green") cylinder(h=50, r=19); }
    module innerHousing() {color("Purple") translate([0,0,-2]) cylinder(h=55, r=15.5); }
    module sideSlot() {color("Red") rotate([0,0,90]) translate([16,0,0])cube([10,10,240], center=true);}
    
    module mountingBracket() {  
        module bracket() {color("Green") scale([1, .4, 1]) cylinder(h=3.5, r=33);}   
        module screwSlots() {}
        difference() {
        bracket();
        innerHousing();    
        scale ([3, .3, 1]) translate ([11.5, -16, 0])sideSlot();
        scale ([3, .3, 1]) translate ([-11.5, -16, 0])sideSlot();
        }
        }
    }
    
module piMount() {
    $fn=30;
difference() {
    rotate([0,90,180]) translate([0,-4,0]) cube ([90 + 6,64,4]);

    rotate([0,90,180])translate([8.5,2.5,-5])cylinder(d=2.7,h=20);
       
    rotate([0,90,180])translate([8.5,53.5,-5])cylinder(d=2.7,h=20);
    
    rotate([0,90,180])translate([69,2.5,-5])cylinder(d=2.7,h=20);
     
    rotate([0,90,180])translate([69,53.5,-5])cylinder(d=2.7,h=20);
    }
}



