$fs = 0.1;  // Don't genrate smaller facets than 0.1 mm
$fa = 5;    // Don't generate larger angles than 5 degrees

ic = 18; // inner diameter of pipe holder
pht = 4; // thickness of the pipe holder
phh = 25; // height of pipeholder

//v2 notes: increased hook cyliender radius from 3.5 to 4, increased inner diameter of pipe holder by 1
//v4 notes: increased diameter of hook by .9mm, increased strength of hook joing, spaced hook further from the poleholder

union() { 
    }

hook(phh);
pipeholder(ic, pht, phh);

module pipeholder (ic, pht, phh) {
    difference () {
        union() { 
            color("yellow") translate([0,0,1]) cylinder(h=(phh-2), r=((ic/2)+(pht/2)));
            color ("purple") translate([10,-5,1]) cube ([14,10,16]);
        }
        color("Green") cylinder(h=phh, r=ic/2);
 
    }   
}
   
module hook (phh) {
    difference() {
        color("red") translate([19.5,0,1]) cylinder(h=(phh-2), r=4.45);
        color("blue") translate([15,-5,17]) cube ([3,10,3]);
    }
}