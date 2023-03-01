/// @description Insert description here
// You can write your code in this editor

//Draw Main Title text
draw_set_font(fnt_beanTitle);
draw_set_color(COLOR_2)
draw_set_halign(fa_center);
draw_text(x, y-TILE_SIZE*2, "BEANRAT GAME");

//frame of button sprite to select
var beginSprite = 0;
var settingsSprite = 0;

//color of button text to select
var beginColor = COLOR_2;
var settingsColor = COLOR_2;

//selection cases
//if begin is selected
if(m_title_selection == 0)
{
	//set begin to highlighted
	beginSprite = 1;
	beginColor = COLOR_3;
}
//if settings is selected
else
{
	//set settings to highlighted
	settingsSprite = 1;
	settingsColor = COLOR_3;
}

//Draw select option texts
draw_set_font(fnt_beanTitleSmall);
draw_set_halign(fa_center);

//draw begin
draw_set_color(beginColor)
draw_sprite(spr_button, beginSprite, x, y);
draw_text(x, y+4, "Begin");

//draw settings
draw_set_color(settingsColor)
draw_sprite(spr_button, settingsSprite, x, y+TILE_SIZE);
draw_text(x, y+4+TILE_SIZE, "Settings");

