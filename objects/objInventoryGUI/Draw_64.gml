/// @description Item Description
draw_set_color(c_white)
if(isEmpty == true) //&& (global.attackMode==0)
{
	draw_text_transformed(3, 246, emptyMessage, 1, 0.8, 0);

} else {
	draw_text_transformed(3, 246, ds_grid_get(myItems, 2, itemSelected), 1, 0.8, 0); 
}

/*if(string_width(ds_grid_get(myItems, 2, itemSelected)) < 248) 
	draw_text_transformed(3, 246, ds_grid_get(myItems, 2, itemSelected), 1, 0.8, 0); 
if(string_width(ds_grid_get(myItems, 2, ItemSelected)) >= 248) 
	draw_text_transformed(3, 246, ds_grid_get(myItems, 2, itemSelected), string_width(ds_grid_get(myItems, 2, itemSelected)) / 348, 0.8, 0);

}
*/
