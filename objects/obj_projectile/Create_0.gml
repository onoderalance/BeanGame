/// @description Insert description here
// You can write your code in this editor

//how many pixels it will move per second
m_proVel = -1;

//how many pixels it will move in one step
//m_rat_stepSize = 1;

//damage it will do
m_proDamage = -1;

xRemainder = 0;
//define script for movement with collision checking
moveX = function(amount)
{
	xRemainder += amount;
    var _move = round(xRemainder);
    if (_move != 0)
    {
        xRemainder -= _move;
        var _sign = sign(_move);
        while (_move != 0)
        {
            if (!instance_place(x + _sign, y, obj_collision))
            {
                // There is no Solid immediately beside us
                x += _sign;
                _move -= _sign;
            }
            else
            {
                // Hit a solid!
                show_debug_message("proj dead");
				instance_destroy();
                break;
            }
        }
    }
}