
if (obj_controller.is_shadow) {
    mask_index = spr_key;
	visible = true;
    solid = !switch_pressed;
} else {
    solid = false;
    mask_index = -1;
	visible = false;
    image_index = 1;
	exit;
}
if (place_meeting(x,y,obj_player_parent)) {
    
    switch_pressed = true;
    image_index = 0;
    solid = false;
	global.activate5 = true
}
if (global.activate5){
image_index = 0;
}
