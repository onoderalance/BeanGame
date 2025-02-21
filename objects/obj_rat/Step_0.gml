/// @description Insert description here
// You can write your code in this editor

//delete self if hp lower than 5
if(m_rat_health <= 0)
	instance_destroy();

//move one step
if(global.currentTick%m_rat_speed == 0)
{
	image_index++;
	x -= m_rat_stepSize;
}

if(place_meeting(x, y, obj_home))
{
	//if reaches home, reduce player health and kill self
	global.health -= 1;
	show_debug_message(global.health);
	instance_destroy();
}