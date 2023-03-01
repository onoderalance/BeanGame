/// @description Insert description here
// You can write your code in this editor

shader_set(sh_palette);

shader_set_uniform_f(sh_handle_color1, 
	color1.toShaderValue(color1.red),
	color1.toShaderValue(color1.green),
	color1.toShaderValue(color1.blue)
); 
shader_set_uniform_f(sh_handle_color2, 
	color2.toShaderValue(color2.red),
	color2.toShaderValue(color2.green),
	color2.toShaderValue(color2.blue)
); 
shader_set_uniform_f(sh_handle_color3, 
	color3.toShaderValue(color3.red),
	color3.toShaderValue(color3.green),
	color3.toShaderValue(color3.blue)
); 
shader_set_uniform_f(sh_handle_color4, 
	color4.toShaderValue(color4.red),
	color4.toShaderValue(color4.green),
	color4.toShaderValue(color4.blue)
); 

draw_self();

shader_reset();


//show_message(colorMatch.red);


/*
//PALETTE SWAPPER DRAW:
// Draw Event
shader_set(shdr_palette);

texture_set_stage(shader_get_sampler_index(shdr_palette, "palette"), sprite_get_texture(spr_palette, 0));
shader_set_uniform_f(shader_get_uniform(shdr_palette, "row"), 0);
texture_set_stage(shader_get_sampler_index(shdr_palette, "palette"), sprite_get_texture(spr_palette, 0));
  //shader_set_uniform_f(shf_index, global.palette);
 shader_set_uniform_f(shader_get_sampler_index(shdr_palette, "pw"),texture_get_texel_width(sprite_get_texture(spr_palette, 0)));
  shader_set_uniform_f(shader_get_sampler_index(shdr_palette, "ph"),texture_get_texel_height(sprite_get_texture(spr_palette, 0)));
draw_self();
shader_reset();

*/