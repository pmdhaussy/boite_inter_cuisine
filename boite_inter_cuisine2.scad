$fn=50;

union() {
    difference() {
        translate([2, 2, 0])
        minkowski() {
            //original box without round corner: cube([89, 81, 30]);
            cube([85, 77, 29]);
            cylinder(r=2,h=1);
        }
        // volume intérieur
        translate([6, 6, 3])
            cube([77, 70, 28]);
        // décaissement du fond
        translate([19.5, 16, 1])
            cube([50, 50, 29]);
        // trous de fixation
        translate([15.5, 12, -1])
            cylinder(5, 1.5, 1.5);
        translate([73.5, 12, -1])
            cylinder(5, 1.5, 1.5);
        translate([15.5, 70, -1])
            cylinder(5, 1.5, 1.5);
        translate([73.5, 70, -1])
            cylinder(5, 1.5, 1.5);
    }
    // plots de fixation de la plaque
    translate([40.5, 6, 0])
        cube([8, 8, 27]);
    translate([40.5, 68, 0])
        cube([8, 8, 27]);

    translate([6, 37, 0])
        cube([11.5, 8, 27]);
    translate([71.5, 37, 0])
        cube([11.5, 8, 27]);
}
