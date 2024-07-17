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

//handles behavior checking

//checks index of what part of the screen the player is in
//unfinished
if(m_player_yPos < 2 && m_player_yPos > 0)
{
	m_player_interactSegment = SEGMENT.SEEDS;
}
else if(m_player_yPos < 7 && m_player_yPos > 1)
{
	m_player_interactSegment = SEGMENT.FIELD;
}

//determines player behaviour based on the segment of the screen we are in
switch(m_player_interactSegment)
{
	case SEGMENT.SEEDS:
		//handles seed checking
		for(var i = 0; i < ds_list_size(global.beanList); i++)
		{
			if(m_player_xPos == global.beanList[|i].seedX && m_player_yPos == global.beanList[|i].seedY)
			{
				m_player_selectActive = true;
				m_player_currentState = 0;
				m_player_seed_hover = i;
				//breaks loop if valid bean found
				break;
			}
			else
			{
				//resets active state if nothing found
				m_player_selectActive = false;
				m_player_seed_hover = -1;
			//	m_player_selectID = -1;
			}
		}
		break;
	case SEGMENT.FIELD:
		break;
}

//handles basic player movement
if(keyboard_check_pressed(global.controlUp) && m_player_yPos != 0)
{
	audio_play_sound(snd_move, 0, false, 1, 0, 1);
	m_player_yPos--;
}
else if(keyboard_check_pressed(global.controlLeft) && m_player_xPos != 0)
{
	audio_play_sound(snd_move, 0, false, 1, 0, 1);	
	m_player_xPos--;
}
else if(keyboard_check_pressed(global.controlDown) && m_player_yPos != 8)
{
	audio_play_sound(snd_move, 0, false, 1, 0, 1);
	m_player_yPos++;
}
else if(keyboard_check_pressed(global.controlRight) && m_player_xPos != 9)
{
	audio_play_sound(snd_move, 0, false, 1, 0, 1);
	m_player_xPos++;
}

//handles key movement
if(keyboard_check_pressed(global.controlMain) && m_player_selectActive)
{
	switch(m_player_currentState)
	{
		case 0:
			m_player_seed = m_player_seed_hover;
			break;
	}
}

//centers player to position according to positional coordinates
x = TILE_SIZE*m_player_xPos;
y = TILE_SIZE*m_player_yPos;

