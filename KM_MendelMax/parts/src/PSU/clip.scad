$fn=50;
//cube([30,2,10]);
rotate([90,0,0])
difference()
{
union(){
cube([40,20,4.5]);
translate([25,10,6.7])rotate([0,0,30])cube([10,30,7],center=true);}
translate([9,9,-1])cylinder(r=1.9,h=20);
translate([41.6,20,6.7/2-0.01])rotate([0,0,30])cube([40,40,6.7],center=true);
translate([0,-9.99,-1])cube([40,10,20]);
translate([0,19.99,-1])cube([40,10,20]);

}