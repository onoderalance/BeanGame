/// @description Insert description here
// You can write your code in this editor

global.currentTick++
//reset ticker every 60
if(global.currentTick >= 60)
	global.currentTick = 0;
	
//show_debug_message(global.currentTick);
