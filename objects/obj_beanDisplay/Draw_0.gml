/// @description Insert description here
// You can write your code in this editor

//draw bean options --------
for(var i = 0; i < ds_list_size(global.beanList); i++)
{
	//draw every bean in the beanList
	draw_sprite(global.beanList[|i].sprite, 0, (m_beanDisplay_seedStartX+i)*TILE_SIZE, m_beanDisplay_seedStartY*TILE_SIZE);
}

//draw selected bean ------
if(obj_player.m_player_seed != -1)
{
	//draw bean "centered" at point of tile 7
	draw_sprite(global.beanList[|obj_player.m_player_seed].sprite, 0, 
		TILE_SIZE*7 - (sprite_get_width(global.beanList[|obj_player.m_player_seed].sprite)/2), 0);
	
	draw_set_halign(fa_center);
	draw_set_font(fnt_beanSmall);
	//currently center to grid tiles 6, 1, with 2 pixel offest on x axis
	draw_text_ext_color(TILE_SIZE*7, TILE_SIZE*1, global.beanList[|obj_player.m_player_seed].name, 6, 30,
		COLOR_1, COLOR_1, COLOR_1, COLOR_1, 1);
}