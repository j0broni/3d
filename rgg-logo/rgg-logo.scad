module logo () {import("/Users/jrutherford/Desktop/3D/rgg-logo/realgoodgoodsreverse.stl");
}

module block() {cube([55,20,3], center=true);}

union() {
scale(2.5,2.5,2.5)logo();
translate([0,0,-1])block();
}