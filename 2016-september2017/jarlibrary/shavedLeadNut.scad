debug = true;
$fs = 0.1;  
$fa = 5;    

module stripped () {

difference() {
	threads();
	chomp();
}
}
if (debug) helpers();


module threads() {	import ("/home/joe/3D/LeadNut_fixed.stl"); }

module chomp() {
difference() {
color("Green") translate ([0,0,-1]) cylinder (h=60, r=500);
	color ("Yellow") translate ([0,0,-1])cylinder (h=60, r=25);
}
};

module helpers() {
		stripped();
	}
echo(version=version());
	