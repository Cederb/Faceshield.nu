$fn=40;

union() {
    difference() {
        import ("Visor_Frame_NORTH_AMERICA_letter_6-hole_v5.stl");
        
        translate([13,34.5,4]) rotate([0, 0, -4]) cube([10, 10, 10], center=true);
        translate([-13,34.5,4]) rotate([0, 0, 4]) cube([10, 10, 10], center=true);
        
        translate([79.5,-13,4]) rotate([0, 0, 4]) cube([10, 10, 10], center=true);
        translate([-79.5,-13,4]) rotate([0, 0, -4]) cube([10, 10, 10], center=true);
    }
    
    translate([13.8, 30.5, 2.5]) rotate([90, 0, 0]) peg();
    translate([-13.8, 30.5, 2.5]) rotate([90, 0, 0]) peg();
    
    translate([75.5, -11.9, 2.5]) rotate([90, 0, 94]) peg();
    translate([-75.5, -11.9, 2.5]) rotate([90, 0, -94]) peg();
}

module peg() {
    difference() {
        cylinder(r=4, h=5, center=true);
        translate([0, 6, 0]) cube([7, 7, 7], center=true);
        translate([0, -6, 0]) cube([7, 7, 7], center=true);
    }
}