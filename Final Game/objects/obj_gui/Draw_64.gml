

if (obj_player.has_key) {
    draw_sprite(spr_key_icon, 0, 1366 - 80, 40);
}

var base_x = 1280;
var base_y = 30;
var icon_size = 32;
var spacing = 40;


draw_sprite(spr_crystal1, 0, base_x, base_y + spacing * 0);
draw_text(base_x + icon_size + 8, base_y + spacing * 0 + 8, string(global.crystal1_count));


draw_sprite(spr_crystal2, 0, base_x, base_y + spacing * 1);
draw_text(base_x + icon_size + 8, base_y + spacing * 1 + 8, string(global.crystal2_count));


draw_sprite(spr_crystal3, 0, base_x, base_y + spacing * 2);
draw_text(base_x + icon_size + 8, base_y + spacing * 2 + 8, string(global.crystal3_count));

