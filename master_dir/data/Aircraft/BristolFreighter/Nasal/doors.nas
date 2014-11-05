Doors = {};

Doors.new = func {
  obj = { parents : [Doors],
               noseDoors : aircraft.door.new("instrumentation/doors/noseDoors",  20.0, 0),
               cargoDoor : aircraft.door.new("instrumentation/doors/cargoDoor",  2.0,  0),
               crewDoor  : aircraft.door.new("instrumentation/doors/crewDoor",   1.0,  0),
               roofHatch : aircraft.door.new("instrumentation/doors/roofHatch",  1.0,  0)
         };
  print("Door system ready");
  return obj;
};

Doors.toggleNoseDoors = func {
  me.noseDoors.toggle();
}

Doors.toggleCargoDoor = func {
  me.cargoDoor.toggle();
}

Doors.toggleCrewDoor = func {
  me.crewDoor.toggle();
}

Doors.toggleRoofHatch = func {
  me.roofHatch.toggle();
}

# ==============
# Initialization
# ==============

doorSystem = Doors.new();
