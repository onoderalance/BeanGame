// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//call from levelManager to start a new level
function scr_startLevel(level)
{
	global.time = 0;
	for(var i = 0; i < 100; i++)
	{
		enemyArray[i] = 0;
	}
	enemyArray[0] = 2;
	enemyArray[10] = 4;
	enemyArray[30] = 5;
	enemyArray[50] = 6;
	enemyArray[70] = 7;
	enemyArray[90] = 10;
}

//call form level manager to determine what needs to spawn at this time
function scr_spawnAtTime(time)
{
	//if not a null num of enemys to spawn
	for(var i = 0; i < enemyArray[time]; i++)
	{
		//spawns with random offsets
		//TODO: MAKE SURE THEY CANNOT OVERLAP
		scr_spawnEnemy("rat", irandom_range(0, 2), irandom_range(0, 4));
	}
}

//call from level manager to spawn new enemy
function scr_spawnEnemy(enemy, xOffset, yOffset)
{
	if(enemy == "rat")
	{
		instance_create_depth(160 + xOffset*16, 32 + yOffset*16, depth, obj_rat);
	}
}


