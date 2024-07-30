// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_projectileGen(pro_x, pro_y, pro_sprite, pro_velocity, pro_damage)
{
	var _newPro = instance_create_depth(pro_x, pro_y, depth, obj_projectile);
	_newPro.sprite_index = pro_sprite;
	_newPro.m_proVel = pro_velocity;
	_newPro.m_proDamage = pro_damage;
}