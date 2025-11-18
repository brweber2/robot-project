// Back Plate for Mecanum Wheel Motor Adapter
// Opposite side from motor - 64.5mm diameter version

$fn = 100; // Smooth circles

// Parameters
outer_diameter = 64.5;
plate_thickness = 8;
bolt_circle_diameter = 32;
bolt_hole_diameter = 4.5; // M4 clearance
nut_recess_diameter = 8; // M4 hex nut recess (7mm + tolerance)
nut_recess_depth = 4; // M4 nut thickness + tolerance
num_holes = 5;

module back_plate() {
    difference() {
        // Main cylinder
        cylinder(h = plate_thickness, d = outer_diameter);
        
        // M4 bolt holes on bolt circle with nut recesses
        for (i = [0:num_holes-1]) {
            angle = i * 360 / num_holes;
            rotate([0, 0, angle]) {
                translate([bolt_circle_diameter/2, 0, -0.5]) {
                    // Through hole for bolt
                    cylinder(h = plate_thickness + 1, d = bolt_hole_diameter);
                    // Hex nut recess on bottom
                    translate([0, 0, -0.5])
                        cylinder(h = nut_recess_depth + 0.5, d = nut_recess_diameter, $fn = 6);
                }
            }
        }
    }
}

back_plate();
