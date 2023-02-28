/// @description Insert description here
// You can write your code in this editor

//center title object
x = room_width/2;
y = room_height/2-TILE_SIZE/2; //room height is uneven,  so account for this

//store which selection is being hovered
m_title_selection = 0;

//store keys for input on title screen
m_title_down = ord("S");
m_title_up = ord("W");
m_title_select = vk_space;