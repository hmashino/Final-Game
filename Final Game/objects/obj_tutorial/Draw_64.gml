var box_w = 600;
var box_h = 150;
var box_x = (display_get_gui_width() - box_w) / 2;
var box_y = (display_get_gui_height() - box_h) / 1;

var spr = spr_signboard2;
var scale_x = box_w / sprite_width;
var scale_y = box_h / sprite_height;

if (sprite_exists(spr)) {
    var scale_x = box_w / sprite_get_width(spr);
    var scale_y = box_h / sprite_get_height(spr);
    draw_sprite_ext(spr, 0, box_x, box_y, scale_x, scale_y, 0, c_white, 1);
} else {
    draw_set_color(c_white);
    draw_rectangle(box_x, box_y, box_x + box_w, box_y + box_h, false);
}

draw_set_color(c_black);
draw_text(box_x + 20, box_y + 20, messages[page]);

if (page == 3&& room == Room1) {
        draw_sprite(spr_crystal1, 0, box_x+32, box_y + 96);
		 draw_sprite(spr_crystal2, 0, box_x+96, box_y + 96);
		  draw_sprite(spr_crystal3, 0, box_x+160, box_y + 96);
    }
	
	if (page == 4&& room == Room1) {
        draw_sprite_ext(spr_doorl, 0, box_x + 480, box_y + 64, 2, 2, 0, c_white, 1);
		 }