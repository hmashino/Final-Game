switch (room) {
    case Room1:
        global.crystal1_required = 1;
        global.crystal2_required = 1;
        global.crystal3_required = 1;
        break;
        
    case Room2:
        global.crystal1_required = 1;
        global.crystal2_required = 1;
        global.crystal3_required = 2;
        break;
        
    case Room3:
        global.crystal1_required = 0;
        global.crystal2_required = 2;
        global.crystal3_required = 0;
        break;
}

