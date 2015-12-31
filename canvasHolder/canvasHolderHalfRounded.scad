module holder(x = 0, y = 0) {
    translate([x,y,0]) {
        linear_extrude(height=5)
        hull() {
            circle(r=5);
            translate([10,0,0]) circle(r=5);
            translate([10,5,0]) circle(r=5);
            translate([0,5,0]) circle(r=5);
        }
        translate([5,5,5]) cylinder(r=5, h=5);
        translate([5,5,10]) sphere(r=5);
    }
}

holder(0,0);
holder(-40,0);
holder(-80,0);
holder(40,0);

holder(0,40);
holder(-40,40);
holder(-80,40);
holder(40,40);
