/// @description Insert description here
// You can write your code in this editor

//centers player to position according to positional coordinates
x = TILE_SIZE*m_player_xPos;
y = TILE_SIZE*m_player_yPos;

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



//handles behavior checking

//checks index of what part of the screen the player is in
//unfinished
if(m_player_yPos >= 0 && m_player_yPos < 2) //seed selection
{
	m_player_interactSegment = SEGMENT.SEEDS;
}
else if(m_player_yPos > 1 && m_player_yPos < 7) //plantable field
{
	m_player_interactSegment = SEGMENT.FIELD;
}
else //everything else
{
	m_player_interactSegment = SEGMENT.NONE;
}

//determines player behaviour based on the segment of the screen we are in
switch(m_player_interactSegment)
{
	case SEGMENT.SEEDS:
		//handles seed checking
		//gets seed hovered by the player
		var _tempseed = -1; //stores index of seed hovered by the player
		for(var i = 0; i < ds_list_size(global.beanList); i++)
		{
			if(m_player_xPos == global.beanList[|i].seedX && m_player_yPos == global.beanList[|i].seedY)
			{
				m_player_selectActive = true;
				m_player_currentState = 0;
				_tempseed = i;
				//breaks loop if valid bean found
				break;
			}
			else
			{
				//resets active state if nothing found
				m_player_selectActive = false;
				_tempseed = -1;
			//	m_player_selectID = -1;
			}
		}
		break;
	case SEGMENT.FIELD:
		if(m_player_seed != -1)//can plant
			m_player_selectActive = true;
		else //cant plant
			m_player_selectActive = false;
		break;
	case SEGMENT.NONE: //nothing interactable
		m_player_selectActive = false;
		break;
}

//handles input main
if(keyboard_check_pressed(global.controlMain))
{
	switch(m_player_interactSegment)
	{
		case SEGMENT.SEEDS:
		// as long as a valid seed is chosen, that will be the new seed
			if(_tempseed != -1) 
				m_player_seed = _tempseed;
			break;
		case SEGMENT.FIELD: //handles planting
			if(m_player_seed != -1) //can plant
			{
				var _newbean = instance_create_depth(x, y, depth, obj_bean);
			}
			break;
			
	}
}
