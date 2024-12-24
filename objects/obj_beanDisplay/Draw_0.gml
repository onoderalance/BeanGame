/// @description Insert description here
// You can write your code in this editor

//draw bean options --------
for(var i = 0; i < global.beanCount; i++)
{
	//draw every bean in the beanList
	draw_sprite(global.beanList[i].sprite, 0, (m_beanDisplay_seedStartX+i)*TILE_SIZE, m_beanDisplay_seedStartY*TILE_SIZE);
}

