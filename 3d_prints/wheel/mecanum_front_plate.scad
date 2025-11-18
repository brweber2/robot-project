// Front Plate for Mecanum Wheel Motor Adapter
// Motor side with D-shaft bore

$fn = 100; // Smooth circles

// Parameters
outer_diameter = 48;
plate_thickness = 10;
d_shaft_diameter = 5.95; // Slightly undersized for press fit
d_shaft_depth = 8;
d_flat_depth = 0.5; // How much to cut off for D-shape
bolt_circle_diameter = 32;
bolt_hole_diameter = 4.5; // M4 clearance
num_holes = 5;

module front_plate() {
    difference() {
        // Main cylinder
        cylinder(h = plate_thickness, d = outer_diameter);
        
        // D-shaft bore
        translate([0, 0, plate_thickness - d_shaft_depth]) {
            difference() {
                cylinder(h = d_shaft_depth + 0.1, d = d_shaft_diameter);
                // D-flat cutout
                translate([d_shaft_diameter/2 - d_flat_depth, -d_shaft_diameter/2, -0.05])
                    cube([d_flat_depth + 1, d_shaft_diameter, d_shaft_depth + 0.2]);
            }
        }
        
        // M4 bolt holes on bolt circle
        for (i = [0:num_holes-1]) {
            angle = i * 360 / num_holes;
            rotate([0, 0, angle])
                translate([bolt_circle_diameter/2, 0, -0.5])
                    cylinder(h = plate_thickness + 1, d = bolt_hole_diameter);
        }
    }
}

front_plate();
