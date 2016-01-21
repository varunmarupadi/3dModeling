module cutout(h=300) {
    rotate([90,0,90])
    linear_extrude(height=h) {
        polygon(points=[[0,0], [40,0], [20,30]]);
    }
}

module cutoutBig(h=300) {
    rotate([90,0,90])
    linear_extrude(height=h) {
        polygon(points=[[0,0], [50,0], [22,34]]);
    }
}

module bottompiece() {
    difference() {
        cube(100);
        rotate([0,0,45]) translate([0,15,80]) cutout();
        rotate([0,0,45]) translate([0,-55,80]) cutout();
    }
}

module bottompiece2() {
    difference() {
        cube(100);
        rotate([0,0,45]) translate([0,15,80]) cutoutBig();
        rotate([0,0,45]) translate([0,-55,80]) cutoutBig();
    }
}

module topthing() {
    cube([100,100,80]);
    intersection() {
        cube(100);
        rotate([0,0,45]) translate([0,55,100]) rotate([180,0,0]) cutout();
    }
    intersection() {
        cube(100);
        rotate([0,0,45]) translate([0,-15,100]) rotate([180,0,0]) cutout();
    }
}


bottompiece();
translate([-150,0,0]) bottompiece2();

//translate([-150,0,0]) topthing();
