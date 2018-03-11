/// @description Insert description here
// You can write your code in this editor
if (global.turn = 1)
{

/// @description Movement & Collision
// You can write your code in this editor

//footstep audio TBD


if (hp<=0)
instance_destroy(id)
if global.turn = 1 {


   monsterMovement();

	

global.turn = 0;

}
		//do dmg to player
	monsterAttack(dmg);
		//collision
		if hspeed!=0
		if !place_free(x+hspeed,y)
			{
				if hspeed>0 move_contact_solid(0,hspeed)
				if hspeed<0 move_contact_solid(180,-hspeed)
				hspeed=0
				
			}

		if vspeed!=0
		if !place_free(x+hspeed,y+vspeed)
			{
				if vspeed>0 move_contact_solid(270,vspeed)
				if vspeed<0 move_contact_solid(90,-vspeed)
				vspeed=0
			}
		}


//hitting 
if(hit && alarm[0] <= 0) {
	alarm[0] = 0.08 * room_speed;	
}


