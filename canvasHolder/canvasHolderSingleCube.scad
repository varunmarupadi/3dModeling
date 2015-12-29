module holder(x = 0, y = 0) {
    translate([x,y,0]) {
        difference() {
            union() {
                cube([30,30,5]);
                translate([10,0,5]) cube([10,30,10]);
            }
        }
    }
}

holder(-15,-15);

