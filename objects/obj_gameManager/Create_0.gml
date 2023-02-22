/// @description Insert description here
// You can write your code in this editor

#macro TILE_SIZE 16

global.currentTick = 0;

//create empty list for all beans
global.beanList = ds_list_create();	

//generate beans
scr_bean_generateBeans();