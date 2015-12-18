module holder(x = 0, y = 0) {
    translate([x,y,0]) {
        cube([30,30,5]);
        translate([10,0,5]) cube([10,30,10]);
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
