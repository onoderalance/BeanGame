/// @description Insert description here
// You can write your code in this editor

//these vars store corresponding 16x16 "coordinates"
m_player_xPos = 0;
m_player_yPos = 0;

//GAMEPLAY: -----
m_player_selectActive = false; //determines if player is over a valid interactible state
//determines what kind of action the player is able to do (-1 nothing, 0 select seed, 1 plant/dig)
//m_player_currentState = -1; 

m_player_seed = -1; //stores index of seed selected by players (-1 is nothing, -2 is dig)
