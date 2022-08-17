$fs = 0.1;  // Don't genrate smaller facets than 0.1 mm
$fa = 5;    // Don't generate larger angles than 5 degrees

ic = 17; // inner diameter of pipe holder
pht = 4; // thickness of the pipe holder
phh = 25; // height of pipeholder
pd = 7; // diameter of the peg 


union() { 
    }

hook(phh);
pipeholder(ic, pht, phh);

module pipeholder (ic, pht, phh) {
    difference () {
        union() { 
            color("yellow") translate([0,0,1]) cylinder(h=(phh-2), r=((ic/2)+(pht/2)));
            color ("purple") translate([10,-3.5,1]) cube ([11.5,7,7]);
        }
        color("Green") cylinder(h=phh, r=ic/2);
 
    }   
}
   
module hook (phh) {
    difference() {
        color("red") translate([18,0,1]) cylinder(h=(phh-2), r=3.5);
        color("blue") translate([13,-3,3]) cube ([3,6,17]);
    }
}