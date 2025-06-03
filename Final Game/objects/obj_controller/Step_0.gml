if (keyboard_check_pressed(vk_shift)) {
    is_shadow = !is_shadow;
        }

layer_set_visible("tile_bg_light", !is_shadow);
layer_set_visible("tile_bg_shadow", is_shadow);
layer_set_visible("tile_bg_lightback", !is_shadow);
layer_set_visible("tile_bg_shadowback", is_shadow);
if (keyboard_check_pressed(ord("G"))) {
    if (!instance_exists(obj_tutorial)) {
        instance_create_layer(0, 0, "Instances", obj_tutorial);
    }
}