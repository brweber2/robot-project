// Front Plate for Mecanum Wheel Motor Adapter
// Motor side with D-shaft bore

$fn = 100; // Smooth circles

// Parameters
outer_diameter = 48;
plate_thickness = 18;
d_shaft_diameter = 5.95; // Slightly undersized for press fit
d_shaft_depth = 15;
d_flat_depth = 0.5; // How much to cut off for D-shape
bolt_circle_diameter = 32;
bolt_hole_diameter = 4.5; // M4 clearance
screw_head_recess_diameter = 8; // M4 screw head recess
screw_head_recess_depth = 4; // M4 screw head depth + tolerance
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
                translate([bolt_circle_diameter/2, 0, -0.5]) {
                    // Through hole for bolt
                    cylinder(h = plate_thickness + 1, d = bolt_hole_diameter);
                    // Screw head recess on same side as D-shaft (top of plate)
                    translate([0, 0, plate_thickness - screw_head_recess_depth + 0.5])
                        cylinder(h = screw_head_recess_depth + 0.5, d = screw_head_recess_diameter);
                }
        }
    }
}

front_plate();
