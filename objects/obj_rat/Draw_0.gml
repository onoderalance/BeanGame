/// @description Insert description here
// You can write your code in this editor

//draw_self();
draw_set_color(c_white);

shf_palette = shader_get_sampler_index(sh_shader2, "palette");
shf_index = shader_get_uniform(sh_shader2, "palette_index");
shf_pw = shader_get_uniform(sh_shader2, "pw");
shf_ph = shader_get_uniform(sh_shader2, "ph");


var _tex = sprite_get_texture(spr_palette2, 0);

show_debug_message(_tex);
show_debug_message(texture_get_texel_width(_tex));
show_debug_message(texture_get_texel_height(_tex));
show_debug_message(texture_get_width(_tex));
show_debug_message(texture_get_height(_tex));
show_debug_message(texture_get_uvs(_tex));

shader_set(sh_shader2);

texture_set_stage(shf_palette, _tex);
shader_set_uniform_f(shf_index, 1);
shader_set_uniform_f(shf_pw, texture_get_texel_width(_tex));
shader_set_uniform_f(shf_ph, texture_get_texel_height(_tex));

//draw_self();
draw_sprite(sprite_index,image_index,x,y);
	
shader_reset();

