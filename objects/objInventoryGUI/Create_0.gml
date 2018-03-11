/// @description set up inventory GUI
alarm[2] = 0;
canDelete = 1;
textBorder = 2;
myItems = playerInventory;
myColor = c_black;
globalvar isEmpty;
isEmpty = false;
emptyMessage = "Satchel empty.";
globalvar itemSelected, scrolledAmount, inventoryEndAt;
itemSelected = 0;
scrolledAmount = 0;
inventoryEndAt = min(ds_grid_height(myItems), floor((sprite_height - (textBorder * 3)) / 2));
inventoryOnScreen = 0;
if(ds_grid_get(myItems, 0, 0) == 0) {
	inventoryEndAt = 0;
	isEmpty = true;
}
