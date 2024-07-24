/// @description Insert description here
// You can write your code in this editor

//handles sprite of player
if(m_player_selectActive)
{
	image_index = 1;
}
else
{
	image_index = 0;
}
draw_self()

//explicit draw of potential bean
if(global.grid[m_player_xPos,m_player_yPos] == GRIDTILE.PLOTEMPTY)
{
	if(m_player_seed != -1)
		draw_sprite(global.beanList[|m_player_seed].sprite,1,x,y)
}