module holder(x = 0, y = 0) {
    translate([x,y,0]) {
        difference() {
            union() {
                cube([30,30,5]);
                translate([10,0,5]) cube([10,30,10]);
            }
            translate([13,0,18]) rotate([0,atan(2),0]) cube([15,30,15]);
            translate([10,0,4.5]) rotate([0,atan(-2),0]) cube([15,30,15]);
        }
    }
}

holder(-15,-15);

