/// @description using and discarding inventory items

if((isEmpty == false) && instance_exists(objInventoryGUI) && keyboard_check(vk_shift) && keyboard_check(ord("E") && (canDelete = 1)) || keyboard_check(vk_enter) && (canDelete = 1)) {
	script_execute(ds_grid_get(playerInventory, 4, itemSelected));
	trashItem();
	
}

if(instance_exists(objInventoryGUI) && keyboard_check(ord("D")) && keyboard_check(vk_shift) && (canDelete = 1)) {
	trashItem();	
	canDelete = 0;
	alarm[2] = room_speed;
	
}


//update inventory after deleting in a way that doesn't confuse the player and shifts every item up
if(ds_grid_get(myItems, 0, 0) != 0) {
	isEmpty = false;
	inventoryEndAt = ds_grid_height(myItems);
	if(ds_grid_height(myItems) >= floor((sprite_height - (textBorder * 3)) / 8))
		inventoryEndAt = floor((sprite_height - (textBorder * 3)) / 8);
}

/*allows inventory to update real time, either when:
item is deleted (duh)
item is picked up (you can't even do that in kneecrawl)*/
if(ds_grid_get(myItems, 0, 0) == 0) {
	isEmpty = true;
	inventoryEndAt = 0;
}
