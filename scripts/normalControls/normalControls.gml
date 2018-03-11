//footstep audio
if hspeed != 0 || vspeed != 0 {
	audio_play_sound(sndStep,10,0)
}

//Movement - keyboard_check_released either return 8 or -8 and adds it to hspeed/vspeed

hspeed = spd * (keyboard_check_released(ord("D")) - keyboard_check_released(ord("A")));
vspeed = spd * (keyboard_check_released(ord("S")) - keyboard_check_released(ord("W")));

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



//gate
if keyboard_check(ord("E")) && distance_to_object(objGate) <= 8 && key == 1
{
	audio_play_sound(sndGate,10,0)
	key = 0
	with(objGate) {
		image_index = 1	;
		solid = 0;
}	
}
//chest
if keyboard_check(ord("E")) && distance_to_object(objChest) <= 8 && objChest.image_index == 0
{
	audio_play_sound(sndGate,10,0)

	with(objChest) {
		image_index = 1	;

}	
}
if(keyboard_check_released(ord("F")))
state = states.fightMode;
