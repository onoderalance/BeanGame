/// @description Insert description here
// You can write your code in this editor

//global constant definitions

//size of a single "tile"
#macro TILE_SIZE 16

//colors
#macro COLOR_1 make_color_rgb(0, 0, 0) //color for darkest tint
#macro COLOR_2 make_color_rgb(84, 84, 84) //color for darkest tint
#macro COLOR_3 make_color_rgb(168, 168, 168) //color for darkest tint
#macro COLOR_4 make_color_rgb(254, 254, 254) //color for darkest tint

//track control button options
global.controlDown = ord("S");
global.controlUp = ord("W");
global.controlMain = vk_space;

//track if palette is swapped or default
global.paletteSwapped = false;

//track current tick (60 per second)
global.currentTick = 0;

//create empty list for all beans
global.beanList = ds_list_create();	

//generate beans
scr_bean_generateBeans();
/*

//SHADER ITEMS: ----
Color = function(r, g, b) constructor
{
	red = r;
	green = g;
	blue = b;
	
	static toShaderValue = function(value)
	{
		return value/255;
	}
};

color1 = new Color(15, 56, 14);
color2 = new Color(49, 97, 47);
color3 = new Color(135, 172, 24);
color4 = new Color(154, 189, 14);

sh_handle_color1 = shader_get_uniform(sh_palette, "color1");
sh_handle_color2 = shader_get_uniform(sh_palette, "color2");
sh_handle_color3 = shader_get_uniform(sh_palette, "color3");
sh_handle_color4 = shader_get_uniform(sh_palette, "color4");
*/

shf_palette = shader_get_sampler_index(sh_shader2, "palette");
shf_index = shader_get_uniform(sh_shader2, "palette_index");
shf_pw = shader_get_uniform(sh_shader2, "pw");
shf_ph = shader_get_uniform(sh_shader2, "ph");
