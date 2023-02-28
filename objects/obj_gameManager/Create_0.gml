/// @description Insert description here
// You can write your code in this editor

//global constant definitions
#macro TILE_SIZE 16

//track control button options
global.controlDown = ord("S");
global.controlUp = ord("W");
global.controlMain = vk_space;


//track current tick (60 per second)
global.currentTick = 0;

//create empty list for all beans
global.beanList = ds_list_create();	

//generate beans
scr_bean_generateBeans();