
if (!obj_controller.is_shadow) {
    visible = true;
    mask_index = spr_key;
    solid = !door_open;

    if (!door_open && place_meeting(x, y, obj_player) && obj_player.has_key) {
        image_index = 1;
        solid = false;
        door_open = true;
    }
} else {
    visible = false;
    solid = false;
    mask_index = -1;
    image_index = 0;
	exit;
}

if (door_open && place_meeting(x, y, obj_player)) {
    room_goto(Room5); 
}

if (global.crystal1_count >= global.crystal1_required &&
    global.crystal2_count >= global.crystal2_required &&
    global.crystal3_count >= global.crystal3_required) {
    
    door_open = true;
    image_index = 1;
    solid = false;
}
