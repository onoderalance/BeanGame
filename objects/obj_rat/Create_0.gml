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

color1 = new Color(15, 56, 14);
color2 = new Color(49, 97, 47);
color3 = new Color(135, 172, 24);
color4 = new Color(154, 189, 14);

sh_handle_color1 = shader_get_uniform(sh_palette, "color1");
sh_handle_color2 = shader_get_uniform(sh_palette, "color2");
sh_handle_color3 = shader_get_uniform(sh_palette, "color3");
sh_handle_color4 = shader_get_uniform(sh_palette, "color4");
