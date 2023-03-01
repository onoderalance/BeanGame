/// @description Insert description here
// You can write your code in this editor

shader_set(sh_palette);

shader_set_uniform_f(sh_handle_range, 1);
shader_set_uniform_f(sh_handle_match, 
	colorMatch.toShaderValue(colorMatch.red),
	colorMatch.toShaderValue(colorMatch.green),
	colorMatch.toShaderValue(colorMatch.blue)
);

shader_set_uniform_f(sh_handle_replace, 
	colorMatch.toShaderValue(colorReplace.red),
	colorMatch.toShaderValue(colorReplace.green),
	colorMatch.toShaderValue(colorReplace.blue)
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