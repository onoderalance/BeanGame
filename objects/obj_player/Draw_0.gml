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
	if(m_player_seed > -1) //bean has been selected by player
	{
		//draw the hollow bean sprite indicating it is plantable
		draw_sprite(global.beanList[m_player_seed].sprite,1,x,y)
		//if canot afford to plant the bean, draw unable sprite
		if(global.money < global.beanList[m_player_seed].cost)
		{
			draw_sprite(spr_unable, 0, x, y)
		}
	}
	//ADD CASE FOR DIG BEAN11 TODO:
}
else if(global.grid[m_player_xPos,m_player_yPos] == GRIDTILE.PLOTFULL)
{
	//does this look weird?
	//draw_sprite(spr_unable, 0, x, y) //draw unable over plots that are planted
}