switch (room) {
    case Room1:
        global.crystal1_required = 1;
        global.crystal2_required = 1;
        global.crystal3_required = 1;
        break;
        
    case Room2:
        global.crystal1_required = 1;
        global.crystal2_required = 1;
        global.crystal3_required = 1;
        break;
        
    case Room3:
        global.crystal1_required = 1;
        global.crystal2_required = 1;
        global.crystal3_required = 1;
        break;
		    case Room4:
        global.crystal1_required = 2;
        global.crystal2_required = 2;
        global.crystal3_required = 2;
        break;
		    case Room5:
        global.crystal1_required = 2;
        global.crystal2_required = 2;
        global.crystal3_required = 2;
        break;
}

var portals = array_create(0);
with (obj_portal) {
    array_push(portals, id);
}


if (array_length(portals) == 2) {
    portals[0].pair = portals[1];
    portals[1].pair = portals[0];
}
var portals = array_create(0);
with (obj_portal1) {
    array_push(portals, id);
}


if (array_length(portals) == 2) {
    portals[0].pair = portals[1];
    portals[1].pair = portals[0];
}
//korewotukae
var portals = array_create(0);
with (obj_portal2) {
    array_push(portals, id);
}


if (array_length(portals) == 2) {
    portals[0].pair = portals[1];
    portals[1].pair = portals[0];
}
//kokomade