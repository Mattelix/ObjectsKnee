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


    var Player_Direction = point_direction(x,y,objPlayer.x,objPlayer.y);
    if(Player_Direction < 45 && place_free(x+8,y)|| Player_Direction >= 315 && place_free(x+8,y)){
        x += 8;
		}
    
    else if(Player_Direction >= 45 && Player_Direction < 135 && place_free(x,y-8)){
        y -= 8;
    }
    else if(Player_Direction >= 135 && Player_Direction < 225 && place_free(x-8,y)){
       x -= 8;
    }
    else if(Player_Direction >= 225 && Player_Direction < 315 && place_free(x,y+8)){
        y += 8;
    }

	

global.turn = 0;

}
		//do dmg to player
		if(place_meeting(x+8,y,objPlayer) || place_meeting(x-8,y,objPlayer) || place_meeting(x,y+8,objPlayer) || place_meeting(x,y-8,objPlayer)  ){
			with (objPlayer)
			{hp=hp-objMonsterSkeleton.dmg}
		
			
		}
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


