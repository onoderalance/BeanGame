/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_center);
draw_set_font(fnt_beanTitleSmall);
draw_text_ext_color(TILE_SIZE*9, TILE_SIZE*0.5, "MONEY", 6, 30,
		COLOR_2, COLOR_2, COLOR_2, COLOR_2, 1);

draw_set_halign(fa_center);
draw_set_font(fnt_beanSmall);
draw_text_ext_color(TILE_SIZE*9, TILE_SIZE*1, global.money, 6, 30,
		COLOR_1, COLOR_1, COLOR_1, COLOR_1, 1);