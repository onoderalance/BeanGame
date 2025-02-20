/// @description Insert description here
// You can write your code in this editor

//timer function, using levelManager's currTick to increment time every second
if(currTick < 60)
{
	currTick++;
}
else
{
	currTick = 0; 
	if(global.time < 100) //increment the time as long as its not maximum
	{
		global.time += 1;
	}
}