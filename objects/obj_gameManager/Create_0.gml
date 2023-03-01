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

//SHADER SETTINGS:
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
