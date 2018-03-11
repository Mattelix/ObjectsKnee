		//do dmg to player
		if(place_meeting(x+8,y,objPlayer) || place_meeting(x-8,y,objPlayer) || place_meeting(x,y+8,objPlayer) || place_meeting(x,y-8,objPlayer)  ){
			with (objPlayer)
			{hp=hp-objMonsterSkeleton.dmg}}