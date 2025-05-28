

if (obj_player.has_key) {
    draw_sprite(spr_key_icon, 0, 1366 - 80, 40);
}

var base_x = 1250;
var base_y = 30;
var icon_size = 32;
var spacing = 35;

draw_sprite(spr_signboard, 0,base_x - 10,base_y - 7)

draw_sprite(spr_crystal1, 0, base_x, base_y + spacing * 0);
draw_text(base_x + icon_size + 8, base_y + spacing * 0 + 8, string(global.crystal1_count)+ " / " + string(global.crystal1_required));


draw_sprite(spr_crystal2, 0, base_x, base_y + spacing * 1);
draw_text(base_x + icon_size + 8, base_y + spacing * 1 + 8, string(global.crystal2_count)+ " / " + string(global.crystal2_required));


draw_sprite(spr_crystal3, 0, base_x, base_y + spacing * 2);
draw_text(base_x + icon_size + 8, base_y + spacing * 2 + 8, string(global.crystal3_count)+ " / " + string(global.crystal3_required));

