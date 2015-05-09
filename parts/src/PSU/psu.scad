$fn=222;

difference()


{

cube([38,23.5,12]);

translate([-0.5,4,-1])cube([5.6,20,15]);
translate([32.9,4,-1])cube([5.6,20,15]);
translate([19,-1,6])rotate([-90,0,0])cylinder(r=2.4,h=50);
translate([19,8,6])rotate([90,0,0])cylinder(r=4.5,h=50);
translate([19,-17,-1])cylinder(r=20,h=20);
}