/// @description Insert description here
// You can write your code in this editor

//handles sprite of player
if(m_player_selectActive)
{
	image_index = 1;
}
else
{
	image_index = 0;
}

//handles basic player movement
if(keyboard_check_pressed(m_player_KeyUp) && m_player_yPos != 0)
{
	audio_play_sound(snd_move, 0, false, 1, 0, 1);
	m_player_yPos--;
}
else if(keyboard_check_pressed(m_player_KeyLeft) && m_player_xPos != 0)
{
	audio_play_sound(snd_move, 0, false, 1, 0, 1);	
	m_player_xPos--;
}
else if(keyboard_check_pressed(m_player_KeyDown) && m_player_yPos != 8)
{
	audio_play_sound(snd_move, 0, false, 1, 0, 1);
	m_player_yPos++;
}
else if(keyboard_check_pressed(m_player_KeyRight) && m_player_xPos != 9)
{
	audio_play_sound(snd_move, 0, false, 1, 0, 1);
	m_player_xPos++;
}

//centers player to position according to positional coordinates
x = 16*m_player_xPos;
y = 16*m_player_yPos;

