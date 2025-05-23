
//if (!obj_controller.is_shadow) {
//    visible = true;           
//    solid = true;            
//    mask_index = spr_key;   
//} else {
//    visible = false;          
//    solid = false;            
//    mask_index = -1;          
//}

//if (!obj_controller.is_shadow) {
//    if (place_meeting(x, y, obj_player)) {
//        if (!door_open) {
//            if (obj_player.has_key) {
//                image_index = 1;
//                solid = false;  
//                door_open = true;
//            }
//        }
//    }
//} else {
//    solid = false;
//    image_index = 0; 
//}

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
}

if (door_open && place_meeting(x, y, obj_player)) {
    room_goto(Room2); 
}