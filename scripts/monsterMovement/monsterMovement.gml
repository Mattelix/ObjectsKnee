if(distance_to_object(objPlayer) <= range)
{
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
}