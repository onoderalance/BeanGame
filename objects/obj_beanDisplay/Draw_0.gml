/// @description Insert description here
// You can write your code in this editor

//draw bean options --------
for(var i = 0; i < ds_list_size(global.beanList); i++)
{
	draw_sprite(global.beanList[|obj_player.m_player_selectID].sprite, 0, (m_beanDisplay_seedStartX+i)*TILE_SIZE, m_beanDisplay_seedStartY*TILE_SIZE);
}

//draw selected bean ------
if(obj_player.m_player_selectActive)
{
	draw_sprite(global.beanList[|obj_player.m_player_selectID].sprite, 0, x, y);
}