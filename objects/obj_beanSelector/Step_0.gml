/// @description Insert description here
// You can write your code in this editor

if(obj_player.m_player_xPos == m_beanSelect_xPos && obj_player.m_player_yPos == m_beanSelect_yPos)
{
	obj_player.m_player_selectActive = true;
	obj_player.m_player_selectID = 0;
}
else
{
	obj_player.m_player_selectActive = false;
	obj_player.m_player_selectID = 0;
}