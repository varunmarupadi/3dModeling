module RoundedHalfHolder(x = 0, y = 0) {
    translate([x,y,0]) {
        linear_extrude(height=5)
        hull() {
            circle(r=5);
            translate([20,0,0]) circle(r=5);
            translate([20,10,0]) circle(r=5);
            translate([0,10,0]) circle(r=5);
        }
        translate([10,10,5]) cylinder(r=5, h=5);
        translate([10,10,10]) sphere(r=5);
    }
}

module RoundedFullHolder(x = 0, y = 0) {
    translate([x,y,0]) {
        linear_extrude(height=5)
        hull() {
            circle(r=5);
            translate([20,0,0]) circle(r=5);
            translate([20,20,0]) circle(r=5);
            translate([0,20,0]) circle(r=5);
        }
        translate([10,10,5]) cylinder(r=5, h=5);
        translate([10,10,10]) sphere(r=5);
    }
}

module SquareHalfHolder(x = 0, y = 0) {
    translate([x,y,0]) {
        cube([30,20,5]);
        translate([10,10,5]) cube([10,10,10]);
    }
}

module SquareFullHolder(x = 0, y = 0) {
    translate([x,y,0]) {
        cube([30,30,5]);
        translate([10,0,5]) cube([10,30,10]);
    }
}

