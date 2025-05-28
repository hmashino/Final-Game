if (obj_controller.is_shadow) {
    
    visible = false;
    exit;
} else {
    visible = true;
	if (place_meeting(x, y, obj_player)) {
        global.crystal1_count += 1;
        instance_destroy();
    }
}
if (!global.activate1){
visible=false
} else {
visible = true}