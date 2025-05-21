if (keyboard_check_pressed(vk_shift)) {
    is_shadow = !is_shadow;
        }
layer_set_visible("tile_bg_light", !is_shadow);
layer_set_visible("tile_bg_shadow", is_shadow);