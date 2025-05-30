if (obj_controller.is_shadow) {
    
    visible = false;
    exit;
} else {
    visible = true;
}

var move_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
var move_left = keyboard_check(vk_left) || keyboard_check(ord("A"));


if (cooldown <= 0 && place_meeting(x, y, obj_player)) {
    var dir_x = move_right - move_left;

    if (dir_x != 0) {
        var check_x = x + dir_x * 32;
        var check_y = y;

        if (!place_meeting(check_x, check_y, obj_ground_light)) {
            target_x = check_x;
            target_y = check_y;
            moving = true;
        }
    }
}


if (moving) {

var speed1 = 4;


    if (x < target_x) {
        x = min(x + speed1, target_x);
    } else if (x > target_x) {
        x = max(x - speed1, target_x);
    }


    if (x == target_x) {
        moving = false;
        cooldown = 10;
    }
}

if (!place_meeting(x, y + 1, obj_ground_light)) {
    y += 4;
}

if (cooldown > 0) {
    cooldown -= 1;
}