module holder(x = 0, y = 0) {
    translate([x,y,0]) {
        difference() {
            union() {
                cube([30,20,5]);
                translate([10,10,5]) cube([10,10,10]);
            }
        }
    }
}

holder(-15,-15);

