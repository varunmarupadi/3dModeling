module holder(x = 0, y = 0) {
    translate([x,y,0]) {
        difference() {
            union() {
                cube([30,30,5]);
                translate([10,10,5]) cube([10,10,10]);
            }
        }
    }
}

module holderHalf(x = 0, y = 0) {
    translate([x,y,0]) {
        difference() {
            union() {
                cube([30,20,5]);
                translate([10,10,5]) cube([10,10,10]);
            }
        }
    }
}

holder(-85, -15);
holder(-50, -15);
holder(-15,-15);
holder(20, -15);
holder(55, -15);

holder(-85, 25);
holder(-50, 25);
holder(-15, 25);
holder(20, 25);
holder(55, 25);

