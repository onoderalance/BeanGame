/// @description Insert description here
// You can write your code in this editor

//if palette is swapper, run palette swapper over the whole surface
if(global.paletteSwapped)
{
	var paletteSurface = surface_create(view_wport[0], view_hport[0]);
	surface_copy(paletteSurface, 0, 0, application_surface);

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
	//CURRENT SCALE IS 1/5, so 0.2 scaling
	draw_surface_ext(paletteSurface, 0, 0, 0.2, 0.2, 0, c_white, 1);
	shader_reset();

	surface_free(paletteSurface);
}
/*
var _surf = surface_create(view_wport[0], view_hport[0]);
surface_copy(_surf,0,0,application_surface);

var _tex = sprite_get_texture(spr_palette2, 0);
shader_set(sh_shader2);
    texture_set_stage(shf_palette,_tex);
    shader_set_uniform_f(shf_index,0);
    shader_set_uniform_f(shf_pw,texture_get_texel_width(_tex));
    shader_set_uniform_f(shf_ph,texture_get_texel_height(_tex));
	
   	draw_surface_ext(_surf, 0, 0, 0.2, 0.2, 0, c_white, 1);
shader_reset();

surface_free(_surf);*/