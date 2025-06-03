if (!global.activate6){
visible=false
exit;
} else {
visible = true}

if (!obj_controller.is_shadow) {
    
    visible = false;
    exit;
} else {
    visible = true;
	if (place_meeting(x, y, obj_player)) {
        global.crystal3_count += 1;
        instance_destroy();
    }
}


