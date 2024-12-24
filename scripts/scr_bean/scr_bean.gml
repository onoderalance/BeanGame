// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//generate all the beans, by addingNew beans to an array
function scr_bean_generateBeans()
{
	//add beans sequentially
	scr_bean_addNew("Money Bean", "money", spr_bean_money, 25, 10, 5*room_speed, 10); //bean 0
	scr_bean_addNew("Green Bean", "green", spr_bean_green, 25, 1, 2*room_speed, 0.5); //bean 1
	scr_bean_addNew( "Lima Bean", "lima", spr_bean_lima, 10, 10, 6*room_speed, 5); //bean 2
}

//add new bean to the array, called from main bean generation script
function scr_bean_addNew(beanName, beanShortName, beanSprite, beanCost, beanDamage, beanROF, beanVelocity)
{
	//definition of bean struct
	var bean =
	{
		name : beanName,
		shortName : beanShortName,
		sprite : beanSprite,
		cost : beanCost,
		damage : beanDamage,
		ROF : beanROF,
		velocity : beanVelocity,
		seedX : 1 + global.beanCount,
		seedY : 0,
		proSprite : spr_projectile
	}
	global.beanList[global.beanCount] = bean;
	global.beanCount++
}

//get name of the bean from given id
function scr_bean_getName(beanid)
{
}

//get sprite for the selected bean from given id
function scr_bean_getSprite(beanid)
{
}