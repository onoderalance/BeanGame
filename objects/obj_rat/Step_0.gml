/// @description Insert description here
// You can write your code in this editor

//move one step
if(global.currentTick%m_rat_speed == 0)
{
	image_index++;
	x -= m_rat_stepSize;
}