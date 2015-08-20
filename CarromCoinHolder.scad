$fn=100;
difference()
{
    // Major portion of the solid
    cylinder(r=16.5*6,h=9);

    r=16.5;
    h=10;
    for (a = [0:6])
    {
        ang=a*60;
        l=3.4641*r;
        // Pcoords: (2*sart(3)*r, 30)
        translate([l*cos(ang),l*sin(ang),0]) cylinder(r=r, h=h);
        nang=ang+30;
        nl=4*r;
        // Pcoords: (4*r, 60)
        translate([nl*cos(nang),nl*sin(nang),0]) cylinder(r=r, h=h);
    }
    // Get rid of all the insides
    cylinder(r=4*16.5,h=10);
    translate([0,-200,0]) cube([200,400,20]);
}
translate([-90,0,8]) cylinder(r=3,h=5);
