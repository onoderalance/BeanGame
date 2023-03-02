/// @description Insert description here
// You can write your code in this editor

//display as palette swawpped 
if(global.paletteSwapped)
{
	//capture screen to a surface to draw fully swapped
	var screen = surface_create(view_wport[0], view_hport[0]);
	surface_copy(screen,0,0,application_surface);
	
	//save palette as a texture
	var texture = sprite_get_texture(spr_palette, 0);

	//set palette swapper texture
	shader_set(sh_palette);

	//set shader uniforms for palette swap
	texture_set_stage(shu_palette, texture);
	shader_set_uniform_f(shu_index, 1); //current default to palette "1"
	shader_set_uniform_f(shu_pw, texture_get_texel_width(texture));
	shader_set_uniform_f(shu_ph, texture_get_texel_height(texture));
	
	//draw surface
	draw_surface_ext(screen, 0, 0, 0.2, 0.2, 0, c_white, 1);
	//free surface
	surface_free(screen);
	
	//reset the shader
	shader_reset();
}