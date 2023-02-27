/// @description Insert description here
// You can write your code in this editor

//draw bean options --------
for(var i = 0; i < ds_list_size(global.beanList); i++)
{
	//draw every bean in the beanList
	draw_sprite(global.beanList[|i].sprite, 0, (m_beanDisplay_seedStartX+i)*TILE_SIZE, m_beanDisplay_seedStartY*TILE_SIZE);
}

//draw selected bean ------
if(obj_player.m_player_selectActive)
{
	draw_set_font(fnt_beanSmall);
	
	draw_sprite(global.beanList[|obj_player.m_player_selectID].sprite, 0, x, y);
	draw_text(x, y+16, global.beanList[|obj_player.m_player_selectID].name);
}