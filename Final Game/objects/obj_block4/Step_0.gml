if(global.activate4){
y -=move_speed
if(y=320){
move_speed = 0
}
}

if (obj_controller.is_shadow) {
    
    visible = false;
    exit;
} else {
    visible = true;
}