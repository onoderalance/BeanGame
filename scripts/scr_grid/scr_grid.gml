// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//generate grid
function scr_grid_generate(array)
{
	for(var _i = 0; _i < GRID_WIDTH; _i++) //iterate over each column
	{
		for(var _j = 0; _j < GRID_HEIGHT; _j++) //iterate over each row
		{
			if(_i < 6 && _j < 2)//case for seeds
				array[_i,_j] = GRIDTILE.SEED;
			else if(_i > 0 && _i < 9 && _j < 7)
				array[_i,_j] = GRIDTILE.PLOTEMPTY;
			else
				array[_i,_j] = GRIDTILE.NONE; //else initialize to nothing
		}
	}
}

function scr_grid_getPlot(i, j)
{
	return global.grid[i,j]
}

function scr_grid_updatePlot(i, j, plotType)
{
	global.grid[i,j] = plotType;
}