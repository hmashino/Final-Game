if (global.show_inventory) {
    var base_x = 32;
    var base_y = 32;
    

    draw_sprite(spr_crystal1, 0, base_x, base_y);
    draw_text(base_x + 40, base_y + 8, string(global.crystal1_count));


    draw_sprite(spr_crystal2, 0, base_x, base_y + 40);
    draw_text(base_x + 40, base_y + 8 + 40, string(global.crystal2_count));


    draw_sprite(spr_crystal3, 0, base_x, base_y + 80);
    draw_text(base_x + 40, base_y + 8 + 80, string(global.crystal3_count));

}