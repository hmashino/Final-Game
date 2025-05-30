
if (!obj_controller.is_shadow) {
    mask_index = spr_key;
    solid = !switch_pressed;
} else {
    solid = false;
    mask_index = -1;
    image_index = 1;
	exit;
}
if (place_meeting(x,y,obj_player)) {
    
    switch_pressed = true;
    image_index = 0;
    solid = false;
	global.activate3 = true
}
if (global.activate3){
image_index = 0;
}
