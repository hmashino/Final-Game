if (!active) exit;

if (obj_controller.is_shadow) {
    grv = -0.2;
    jmp = 4;
	gravity_flipped = true;
}else {
grv = 0.2;
jmp = -4;
gravity_flipped = false
}
image_yscale = gravity_flipped ? -0.5 : 0.5;

var jump_pressed = keyboard_check_pressed(vk_space) || keyboard_check(ord("W")) || keyboard_check(vk_up); 
var move_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
var move_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
var ground_1, ground_2;
if (obj_controller.is_shadow) {
    ground_1 = obj_ground_shadow;
    ground_2 = obj_ground_light;
} else {
    ground_1 = obj_ground_light;
    ground_2 = obj_ground_shadow;
}

hsp = move_right - move_left;
vsp += grv;

if (place_meeting(x, y + 1, ground_1)) {
    if (jump_pressed) {
        vsp = jmp;
    }
}
if (place_meeting(x, y - 1, ground_1)) {
    if (jump_pressed) {
        vsp = jmp;
    }
}


if (place_meeting(x + hsp * 4, y, ground_1)) {
    while (!place_meeting(x + sign(hsp), y, ground_1)) {
        x += sign(hsp);
    }
    hsp = 0;
}
x += hsp * 4;

if (place_meeting(x, y + vsp, ground_1)) {
    while (!place_meeting(x, y + sign(vsp), ground_1)) {
        y += sign(vsp);
    }
    vsp = 0;
}
y += vsp;


if(!obj_controller.is_shadow){
if (place_meeting(x, y, obj_ground_light)) {
    repeat (8) {
        if (place_meeting(x, y, obj_ground_light)) {
            y -= 1;
        } else {
            break;
        }
    }
}
}else{
if (place_meeting(x, y, obj_ground_shadow)) {
    repeat (8) {
        if (place_meeting(x, y, obj_ground_shadow)) {
            y += 1;
        } else {
            break;
        }
    }
}
}




if (place_meeting(x, y, obj_key)) {
    if (obj_key.visible) {
        has_key = true;
        with (obj_key) instance_destroy();
    }
}

if (place_meeting(x, y, obj_controller.is_shadow ? obj_barrier : obj_barrier)) {
    repeat (8) {
        if (place_meeting(x, y, obj_controller.is_shadow ? obj_barrier : obj_barrier)) {
            x -= 1;
			y += 10;
        } else {
            break;
        }
    }
}


if(!obj_controller.is_shadow){
	if (place_meeting(x, y + 1, obj_push_block)) {
    if (jump_pressed) {
        vsp = jmp;
    }
}
if (place_meeting(x, y + vsp, obj_push_block)) {
    while (!place_meeting(x, y + sign(vsp), obj_push_block)) {
        y += sign(vsp);
    }
    vsp = 0;
}

if (place_meeting(x, y + vsp, obj_push_block)) {
    while (!place_meeting(x, y + sign(vsp),obj_push_block)) {
        y += sign(vsp);
    }
    vsp = 0;
}
var dir = move_right - move_left;
if (dir != 0) {
    var check_x = x + dir;
    var check_y = y;
    

    var block = instance_place(check_x, check_y, obj_push_block);
    if (block != noone) {

        var target_x = block.x + dir * 32;
        var can_move = !position_meeting(target_x, block.y, obj_ground_light);


        if (!can_move) {
            x -= dir;
        }
    }
}
}
