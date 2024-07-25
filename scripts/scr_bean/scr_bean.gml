// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//generate all the beans, by addingNew beans to an array
function scr_bean_generateBeans()
{
	scr_bean_addNew("Green Bean", "green", spr_bean_green, 25, 1, 1, 2); //bean 0
	scr_bean_addNew("Lima Bean", "lima", spr_bean_lima, 10, 1, 1, 2); //bean 1
}

//add new bean to the array, called from main bean generation script
function scr_bean_addNew(beanName, beanShortName, beanSprite, beanDamage, beanROF, beanVelocity)
{
	//definition of bean struct
	var bean =
	{
		name : beanName,
		shortName : beanShortName,
		sprite : beanSprite,
		cost : 0,
		damage : beanDamage,
		ROF : beanROF,
		Velocity : beanVelocity,
		seedX : 1 + ds_list_size(global.beanList),
		seedY : 0
	}
	ds_list_add(global.beanList, bean);
}

//get name of the bean from given id
function scr_bean_getName(beanid)
{
}

//get sprite for the selected bean from given id
function scr_bean_getSprite(beanid)
{
}