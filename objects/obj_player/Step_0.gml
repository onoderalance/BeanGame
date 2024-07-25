/// @description Insert description here
// You can write your code in this editor

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
else if(keyboard_check_pressed(global.controlDown) && m_player_yPos != GRID_WIDTH)
{
	audio_play_sound(snd_move, 0, false, 1, 0, 1);
	m_player_yPos++;
}
else if(keyboard_check_pressed(global.controlRight) && m_player_xPos != GRID_HEIGHT)
{
	audio_play_sound(snd_move, 0, false, 1, 0, 1);
	m_player_xPos++;
}

//centers player to position according to positional coordinates
x = TILE_SIZE*m_player_xPos;
y = TILE_SIZE*m_player_yPos;

//handles behavior checking

//determines player behaviour based on the segment of the screen we are in
switch(global.grid[m_player_xPos,m_player_yPos])
{
	case GRIDTILE.SEED:
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
	case GRIDTILE.PLOTEMPTY:
		if(m_player_seed != -1)//can plant
			m_player_selectActive = true;
		else //cant plant
			m_player_selectActive = false;
		break;
	case GRIDTILE.PLOTFULL: //if the plot is taken by a seed already
	case GRIDTILE.NONE: //nothing interactable
		m_player_selectActive = false;
		break;
}

//handles input main
if(keyboard_check_pressed(global.controlMain))
{
	switch(global.grid[m_player_xPos,m_player_yPos])
	{
		case GRIDTILE.SEED:
		// as long as a valid seed is chosen, that will be the new seed
			if(_tempseed != -1) 
			{
				//if same seed has been chosen, deselect current seed
				if(_tempseed == m_player_seed)
					m_player_seed = -1;
				else //otherwise, set seed to new seed
					m_player_seed = _tempseed;
			}
			break;
		case GRIDTILE.PLOTEMPTY: //handles planting
			if(m_player_seed != -1) //can plant
			{
				//if can afford to plant
				if(global.money >= global.beanList[|m_player_seed].cost)
				{
					//mark tile as taken
					global.money -= global.beanList[|m_player_seed].cost;
					show_debug_message(global.money);
					show_debug_message(global.beanList[|m_player_seed].cost);
					scr_grid_updatePlot(m_player_xPos, m_player_yPos, GRIDTILE.PLOTFULL)
					var _newbean = instance_create_depth(x, y, depth, obj_bean);
					_newbean.m_bean_type = m_player_seed; //set type
					_newbean.sprite_index = global.beanList[|m_player_seed].sprite; //set sprite
				}
				else
				{
					//cant plant, play dissapointed sound or somethign
				}
			}
			break;
	}
}