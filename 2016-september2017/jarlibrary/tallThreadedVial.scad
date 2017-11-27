//	import ("/home/joe/3D/shavedLeadNut.stl");
debug = true;
$fs = 0.1;  
$fa = 5;    

union() {
	vial();
	threads();
	} 

module vial() {
difference() {
		cyl();	
		xRings();
		zRings();
		chamber();
	}
}

if (debug) helpers();
module cyl() { color("Red") cylinder(h=61, r=9.5);}	
module xRings() { 
			function f(x) = x ;
			for (a = [2: 5: 60])
		difference () { 
			translate([0,0,f(a)]) outer();
			translate([0,0,f(a)]) inner(); 
	}
}

module zRingObject()  { color("Orange") cylinder (h=63, r=1.5);};
module zRings() {
				a=9.5;
				b=7;
				c=-1;
			translate ([a,0,c]) zRingObject();
			translate ([0,a,c]) zRingObject();
			translate ([-a,0,c]) zRingObject();
			translate ([0,-a,c]) zRingObject();
			translate ([b,b,c]) zRingObject();
			translate ([-b,-b,c]) zRingObject();
			translate ([b,-b,c]) zRingObject();
			translate ([-b,b,c]) zRingObject();
}

module outer() { color("Yellow")cylinder(h=2, r=12);}
module inner() {color("Green") cylinder(h=3, r=8.8);}
module chamber() {color("Purple") translate ([0,0,4]) cylinder(h=75, r=7.22);}


module threads() {
		translate ([0,0,51]) scale(.29) import ("/home/joe/3D/openSCAD files/shavedLeadNut.stl"); 
}

module helpers() {
		vial();
	}
echo(version=version());
	
	