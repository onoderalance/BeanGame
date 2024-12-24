/// @description Insert description here
// You can write your code in this editor

//draw selected bean ------
if(obj_player.m_player_seed != -1)
{
	//draw bean "centered" at point of tile 7
	draw_sprite(global.beanList[obj_player.m_player_seed].sprite, 0, 
		TILE_SIZE*7 - (sprite_get_width(global.beanList[obj_player.m_player_seed].sprite)/2), 0);
	draw_set_halign(fa_center);
	draw_set_font(fnt_beanSmall);
	//currently center to grid tiles 6, 1, with 2 pixel offest on x axis
	draw_text_ext_color(TILE_SIZE*7, TILE_SIZE*1, global.beanList[obj_player.m_player_seed].name, 6, 30,
		COLOR_1, COLOR_1, COLOR_1, COLOR_1, 1);
	break;
}

//otherwise, draw other pertinent information
if(obj_player.m_player_currentState == 2) //draw 
	