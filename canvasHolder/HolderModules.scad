module RoundedHalfHolder(length = 30, radius = 7.5, thick = 5, height = 7.5, round = 5) {
    linear_extrude(height=thick)
    hull() {
        translate([-length/2+round,-length/2+round,0]) circle(r=round);
        translate([length/2-round,-length/2+round,0]) circle(r=round);
        translate([length/2-round,length/2-round-radius,0]) circle(r=round);
        translate([-length/2+round,length/2-round-radius,0]) circle(r=round);
    }
    translate([0,0,thick]) cylinder(r=radius, h=height);
    translate([0,0,thick+height]) sphere(r=radius);
}

module RoundedFullHolder(length = 30, radius = 7.5, thick = 5, height = 7.5, round = 5) {
    linear_extrude(height=thick)
    hull() {
        translate([-length/2+round,-length/2+round,0]) circle(r=round);
        translate([length/2-round,-length/2+round,0]) circle(r=round);
        translate([length/2-round,length/2-round,0]) circle(r=round);
        translate([-length/2+round,length/2-round,0]) circle(r=round);
    }
    translate([0,0,thick]) cylinder(r=radius, h=height);
    translate([0,0,thick+height]) sphere(r=radius);
}

module CylinderHalfHolder(radbase = 15, thick = 5, radtop = 7.5, height = 7.5) {
    cylinder(r=radbase, h=thick);
    translate([0,radbase-radtop,thick]) {
        cylinder(r=radtop,h=height);
        translate([0,0,height]) sphere(r=radtop);
    }
}

module CylinderFullHolder(radbase = 15, thick = 5, radtop = 7.5, height = 7.5) {
    cylinder(r=radbase, h=thick);
    translate([0,0,thick]) {
        cylinder(r=radtop,h=height);
        translate([0,0,height]) sphere(r=radtop);
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
