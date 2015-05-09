

//import the existing geometry
module extruder(){
  union() {
    import("X-carriage.stl");
    //add a box to constrict height
    translate([1,0,0])
    cube(size = [0.01,0.01,0.01],center=false);
    //difference() {
//      translate([0,8.9,0])
//      cube(size=[30,1.5,19.2],center=true);
//      rotate([90,0,0])
//      cylinder(r=1.02, h=30, center = true, $fn = 21);
//    }
  };
};

module x_carriage(){
  union(){





  };//end main union
};//end module

//create a module to define the geometry of a rail
module rail(){
  color("Red")
  translate([-50,25,10])
  rotate([0,90,0])
  cylinder(r=4, h=200, center=false, $fn = 20);

};//end module

//module to place rails
module rails(){
  rail();
  translate([0,50,0])
  rail();
};//end module

//define the geometry of the LM8UU bearing
module bearing(){
  color("Blue")
  translate([11,24.33,10])
  rotate([0,90,0])
  cylinder(r=7.5,h=24, center = false, $fn = 20);
};//end module


//locate bearings
module bearings(){
  bearing();

};//end module
//render
//extruder();
//rails();
//bearings();
intersection(){
  bearings();
  extruder();
};