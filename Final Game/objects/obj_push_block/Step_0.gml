if (obj_controller.is_shadow) {
    visible = false;
    exit;
} else {
    visible = true;
}


if (!variable_instance_exists(id, "target_x")) target_x = x;
if (!variable_instance_exists(id, "moving")) moving = false;


var player_on_top = false;
with (obj_player_parent) {
    if (bbox_bottom <= other.bbox_top + 2 &&
        bbox_right > other.bbox_left &&
        bbox_left < other.bbox_right &&
        place_meeting(x, y + 1, other)) {
        player_on_top = true;
    }
}


if (!moving && !player_on_top) {

    if (place_meeting(x - 1, y, obj_player_parent)) {
        if (!place_meeting(x + 32, y, obj_ground_light)) {
            target_x = x + 32;
            moving = true;
        }
    }

    else if (place_meeting(x + 1, y, obj_player_parent)) {
        if (!place_meeting(x - 32, y, obj_ground_light)) {
            target_x = x - 32;
            moving = true;
        }
    }
}


if (moving) {
    var speed1 = 2;

    if (abs(x - target_x) <= speed1) {
        x = target_x;
        moving = false;
    } else {
        x += sign(target_x - x) * speed1;
    }
}


if (!place_meeting(x, y + 1, obj_ground_light)) {
    y += 4;
}


if (player_on_top) {
    with (obj_player_parent) {
        y = other.y - sprite_height;
        vspeed = 0;
    }
}