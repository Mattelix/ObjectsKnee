
			    //If in Attack mode, attack to left.
			if(keyboard_check_released(ord("A"))) 
				{	instance_create_depth(x-8,y,10,objSmash);
					state = states.normal;	 //Turn off Attack mode, movement enabled again
					
					}
			else if(keyboard_check_released(ord("D")))
				{	instance_create_depth(x+8,y,10,objSmash);
					state = states.normal;
				
					}
			else if(keyboard_check_released(ord("W")))
				{	instance_create_depth(x,y-8,10,objSmash);
			     	state = states.normal;

					}
			else if(keyboard_check_released(ord("S")))
				{	instance_create_depth(x,y+8,10,objSmash);
					state = states.normal;

					}
					
					//Just exit attack mode
					else if(keyboard_check_pressed(vk_space))
					state = states.normal;