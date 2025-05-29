if(!global.activate2){
visible = false
exit;
} else{



if (!obj_controller.is_shadow) {
    
    visible = false;
    exit;
} else {
    visible = true;
}

if (warp_cooldown > 0) {
    warp_cooldown -= 1;
}


if (place_meeting(x, y, obj_player) && !shrinking && warp_cooldown <= 0 && pair != noone) {
    shrinking = true;
}


if (shrinking) {
    scale_x = max(scale_x - shrink_speed, 0);
    scale_y = max(scale_y - shrink_speed, 0);


    if (scale_x <= 0.01 || scale_y <= 0.01) {
        with (obj_player) {
            x = other.pair.x;
            y = other.pair.y;
        }

        pair.scale_x = 0;
        pair.scale_y = 0;
        pair.expanding = true;

        pair.warp_cooldown = 180;
        warp_cooldown = 30;

        scale_x = 1;
        scale_y = 1;
        shrinking = false;
    }
}


if (expanding) {
    scale_x = min(scale_x + shrink_speed, 1);
    scale_y = min(scale_y + shrink_speed, 1);

    if (scale_x >= 1 && scale_y >= 1) {
        expanding = false;
    }
}
}