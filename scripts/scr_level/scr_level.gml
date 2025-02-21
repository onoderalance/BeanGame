// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//call from levelManager to start a new level
function scr_startLevel(level)
{
	//reset health to max
	global.health = 5;
	//reset time to 0
	global.time = 0;
	//empty enemyarray to repopulate
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
	//variables to ensure that rats dont spawn over eachother
	var spawnGrid = ds_grid_create(3, 5);
	ds_grid_clear(spawnGrid, false);
	
	//if not a null num of enemys to spawn
	for(var i = 0; i < enemyArray[time]; i++)
	{
		//spawns with random offsets
		var newx, newy;
        var attempts = 0; // counter for attempts to find a valid position
        do {
            newx = irandom_range(0, 2); 
            newy = irandom_range(0, 4); 
            attempts++;
        } until (!ds_grid_get(spawnGrid, newx, newy) || attempts >= 100); 

        // If a valid position was found, spawn new rat
        if (attempts < 100) 
		{
            scr_spawnEnemy("rat", newx, newy);
            spawnGrid[# newx, newy] = true; // Mark as filled in the grid
        }
        else 
		{
            show_debug_message("no valid spawn in 100 attempts");
        }
	}
}

//call from level manager to spawn new enemy
function scr_spawnEnemy(enemy, xOffset, yOffset)
{
	if(enemy == "rat")
	{
		var newRat = instance_create_depth(160 + xOffset*16, 32 + yOffset*16, depth, obj_rat);
		newRat.m_rat_lane = yOffset; //store the lane of this rat
	}
}


