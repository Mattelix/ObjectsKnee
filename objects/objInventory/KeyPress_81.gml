/// @description show inventory
if(!instance_exists(objInventoryGUI)) {
	with (objPlayer)
	{
	state = states.inventoryMode;
	}
	inventoryDisplay = instance_create_depth(0, 0, depth - 1, objInventoryGUI);
	with(inventoryDisplay) {
		/// @description keep that gui firm boy
		x = objPlayer.x
		y = objPlayer.y 

	}
}
else {

	instance_destroy(objInventoryGUI);
		with (objPlayer)
	{
	state = states.normal;
	}
	
}