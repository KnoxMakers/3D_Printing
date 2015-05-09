

//import the existing geometry
module extruder(){
  union() {
    import("Extruder_Base.stl");
    //add a box to constrict height
    color([1,0,0])
    difference() {
      translate([0,8.9,0])
      cube(size=[30,1.5,19.2],center=true);
      rotate([90,0,0])
      cylinder(r=1.02, h=30, center = true, $fn = 21);
    }
  };
};




//render
extruder();
