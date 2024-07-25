/// @description Insert description here
// You can write your code in this editor

//global constant definitions

//size of a single "tile"
#macro TILE_SIZE 16

//grid dimensions
#macro GRID_WIDTH 10
#macro GRID_HEIGHT 9

//colors
#macro COLOR_1 make_color_rgb(0, 0, 0) //color for darkest tint
#macro COLOR_2 make_color_rgb(84, 84, 84) //color for darkest tint
#macro COLOR_3 make_color_rgb(168, 168, 168) //color for darkest tint
#macro COLOR_4 make_color_rgb(254, 254, 254) //color for darkest tint

//enum for grid roles
enum GRIDTILE
{
	NONE,
	SEED,
	PLOTEMPTY,
	PLOTFULL
}

//track control button options
global.controlDown = ord("S");
global.controlUp = ord("W");
global.controlLeft = ord("A");
global.controlRight = ord("D");

global.controlMain = vk_space;
global.controlAlt = vk_enter;

//track if palette is swapped or default
global.paletteSwapped = false;

//track current tick (60 per second)
global.currentTick = 0;

//create empty list for all beans
global.beanList = ds_list_create();	

//generate beans
scr_bean_generateBeans();

//generate grid
global.grid[GRID_WIDTH,GRID_HEIGHT] = -1; //init
scr_grid_generate(global.grid); //populate

//Shader values: ------
shu_palette = shader_get_sampler_index(sh_palette, "palette"); //holds texture of palette
shu_index = shader_get_uniform(sh_palette, "palette_index"); //holds index of which palette to use
shu_pw = shader_get_uniform(sh_palette, "pw"); //holds texel width of palette texture
shu_ph = shader_get_uniform(sh_palette, "ph"); //holds texel height of palette texture
