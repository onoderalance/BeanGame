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
		global.money += _currBean.cost;
	}
	else //case for other beans
	{
	}
	//reset shot clock
	m_bean_timeToShot = _currBean.ROF; 
}
else
{
	m_bean_timeToShot--;
}
	

