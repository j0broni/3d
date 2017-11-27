module logo () {
    import("/Users/jrutherford/Desktop/QA-screenshots/print1.stl", center=true);
    }

module plate() {
    rotate([0,0,-20])translate([0,0,3])cube([16,16,.05], center=true);
    }
    
    module plate2() {
        cube ([22,22,22]);
        }
        
        difference() {
    difference (){
    difference() {
    plate();
    
    logo();
        
    } 
            translate([13,-4,0])rotate([0,0,50])plate2();

    }
           translate([-13,-25,0])rotate([0,0,44])plate2();

    }