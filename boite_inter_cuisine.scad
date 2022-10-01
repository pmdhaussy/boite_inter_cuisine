$fn=50;
union() {
    difference() {
        translate([10, 10, 0])
            minkowski() {
        //        cube([82, 82, 30]);
                cube([62, 62, 29]);
                cylinder(r=10,h=1);
            }    
        // volume intérieur
        translate([6, 6, 3])
            cube([70, 70, 28]);
        // décaissement du fond
        translate([16, 16, 1])
            cube([50, 50, 29]);
        // trous de fixation
        translate([12, 12, -1])
            cylinder(5, 1.5, 1.5);
        translate([70, 12, -1])
            cylinder(5, 1.5, 1.5);
        translate([12, 70, -1])
            cylinder(5, 1.5, 1.5);
        translate([70, 70, -1])
            cylinder(5, 1.5, 1.5);
    }
    // plots de fixation de la plaque
    translate([37, 6, 0])
        cube([8, 8, 30]);
    translate([6, 37, 0])
        cube([8, 8, 30]);
    translate([37, 68, 0])
        cube([8, 8, 30]);
    translate([68, 37, 0])
        cube([8, 8, 30]);
}