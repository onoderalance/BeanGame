/// @description Insert description here
// You can write your code in this editor

//title menu control segment: --------

//selection chosen
if(keyboard_check_pressed(global.controlMain))
{
	if(m_title_selection = 0) //if hovering start button, start
		room_goto(rm_main);
}
else if(keyboard_check_pressed(global.controlUp))
{
	if(m_title_selection = 1) //if hovering start button, move to select button
	{
		audio_play_sound(snd_move, 0, false);
		m_title_selection = 0;
	}
		
}
else if(keyboard_check_pressed(global.controlDown))
{
	if(m_title_selection = 0) //if hovering settings button, move to start button
	{
		audio_play_sound(snd_move, 0, false);
		m_title_selection = 1;
	}
}
