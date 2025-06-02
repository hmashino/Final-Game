timer += 1;

if (is_visible && timer >= visible_time) {
    is_visible = false;
    timer = 0;
    x = -1000;
    y = -1000;
} else if (!is_visible && timer >= invisible_time) {
    is_visible = true;
    timer = 0;
    x = original_x;
    y = original_y;
}

if (obj_controller.is_shadow) {
    
    visible = false;
    exit;
} else {
    visible = true;

}