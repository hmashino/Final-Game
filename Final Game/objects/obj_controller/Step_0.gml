if (keyboard_check_pressed(vk_shift)) {
    is_shadow = !is_shadow;
        }
if (keyboard_check_pressed(ord("E"))) {
    global.show_inventory = !global.show_inventory;
}
layer_set_visible("tile_bg_light", !is_shadow);
layer_set_visible("tile_bg_shadow", is_shadow);
layer_set_visible("tile_bg_lightback", !is_shadow);
layer_set_visible("tile_bg_shadowback", is_shadow);