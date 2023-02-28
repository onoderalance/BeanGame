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

//frame of button sprite to select
var beginSprite = 0;
var settingsSprite = 0;

//color of button text to select
var beginColor = optionMainColor;
var settingsColor = optionMainColor;

//selection cases
//if begin is selected
if(m_title_selection == 0)
{
	//set begin to highlighted
	beginSprite = 1;
	beginColor = optionDefaultColor;
	//check to change to other option
	if(keyboard_check_pressed(m_title_down))
	{
		audio_play_sound(snd_move, 0, false);
		m_title_selection = 1;
	}
}
//if settings is selected
else
{
	//set settings to highlighted
	settingsSprite = 1;
	settingsColor = optionDefaultColor;
	//check to change to other option
	if(keyboard_check_pressed(m_title_up))
	{
		audio_play_sound(snd_move, 0, false);
		m_title_selection = 0;
	}
}

if(keyboard_check_pressed(m_title_select) && m_title_selection = 0)
{
	room_goto(rm_main);
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

