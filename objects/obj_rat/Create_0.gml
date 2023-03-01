/// @description Insert description here
// You can write your code in this editor

//how many frames it takes to move once
m_rat_speed = 5;

//how many pixels it will move in one step
m_rat_stepSize = 1;

//how much health the rat has
m_rat_health = 5;

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

colorMatch = new Color(15, 56, 15);
colorReplace = new Color(234, 48, 255);

sh_handle_range = shader_get_uniform(sh_palette, "range");
sh_handle_match = shader_get_uniform(sh_palette, "colorMatch");
sh_handle_replace = shader_get_uniform(sh_palette, "colorReplace");
