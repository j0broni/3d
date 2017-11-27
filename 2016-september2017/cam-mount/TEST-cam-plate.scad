module originalPlate () {
    import("/Users/jrutherford/Desktop/3D/cam-mount/camera_plate.stl");
    }
    
module negativePlate() {color("Yellow") cube([100,105,30]);}

module negative2() {color("Green") cube([100,150,100]); }
difference() {
difference() {
    originalPlate();

    translate([-50,-37,28.61]) negativePlate();
}

translate([-50, -90, -10]) negative2();
}