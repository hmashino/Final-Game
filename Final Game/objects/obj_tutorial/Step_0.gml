if (keyboard_check_pressed(ord("G"))) {
    if (!instance_exists(obj_tutorial)) {
        instance_create_layer(0, 0, "GUI", obj_tutorial);
    }
}

if (keyboard_check_pressed(vk_anykey)) {
    page += 1;
    if (page >= array_length(messages)) {
        instance_destroy();
        obj_player.active = true;
		if(room = Room5){
		obj_player2.active = true
		}
    }
}

