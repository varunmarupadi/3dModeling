use <HolderModules.scad>

translate([-20,20,0]) RoundedHalfHolder();
translate([20,20,0]) RoundedFullHolder();
translate([-20,-20,0]) CylinderHalfHolder();
translate([20,-20,0]) CylinderFullHolder();
