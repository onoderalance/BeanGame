/// @description Insert description here
// You can write your code in this editor

//move one step
if(global.currentTick%m_proVel == 0)
{
	show_debug_message("hi");
	x += m_rat_stepSize;
}