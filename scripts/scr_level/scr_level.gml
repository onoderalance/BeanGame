// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//call from levelManager to start a new level
function scr_startLevel(level)
{
	global.time = 0;
}

//call from level manager to spawn new enemy
function scr_spawnEnemy(enemy, xOffset, yOffset)
{
	if(enemy == "rat")
	{
		instance_create_depth(160 + xOffset*16, 32 + yOffset*16, depth, obj_rat);
	}
}