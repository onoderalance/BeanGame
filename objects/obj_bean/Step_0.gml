/// @description Insert description here
// You can write your code in this editor

//store bean in an easily accessed pointer
var _currBean = global.beanList[m_bean_type]

//when timer is at 0, shoot 
if(m_bean_timeToShot <= 0)
{
	//case for money bean
	if(_currBean.shortName == "money")
	{
		audio_play_sound(snd_money, 0, false);
		global.money += _currBean.cost;
	}
	else //case for other beans, shoot a projectile
	{
		audio_play_sound(snd_shot, 0, false);
		scr_projectileGen(x, y, _currBean.proSprite, _currBean.velocity, _currBean.damage)
	}
	//reset shot clock
	m_bean_timeToShot = irandom_range(_currBean.ROF - 1, _currBean.ROF + 1);
}
else
{
	m_bean_timeToShot--;
}
	

