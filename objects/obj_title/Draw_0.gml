/// @description Insert description here
// You can write your code in this editor

var optionHighlightColor = make_color_rgb(15, 58, 15); //color for darkest tint
var optionMainColor = make_color_rgb(48, 98, 48); //color for main highlight
var optionDefaultColor = make_color_rgb(139, 172, 15); //color for slight tint

//Draw Main Title text
draw_set_font(fnt_beanTitle);
draw_set_color(optionMainColor)
draw_set_halign(fa_center);
draw_text(x, y-TILE_SIZE*2, "BEANRAT GAME");

//Draw select option texts
draw_set_font(fnt_beanTitleSmall);
draw_set_color(optionMainColor)
draw_set_halign(fa_center);
draw_text(x, y, "Begin");
draw_text(x, y+TILE_SIZE, "Settings");


