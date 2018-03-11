/// @description draw inventory on screen
draw_self();
draw_set_colour(myColor);


draw_text_transformed(bbox_left + textBorder + 1, bbox_top + textBorder, "Item", 0.15, 0.15, 0);
draw_text_transformed(bbox_left + 15, bbox_top + textBorder, "Name", 0.15, 0.15, 0);
draw_text_transformed(bbox_left + 26.5, bbox_top + textBorder, "Amount", 0.15, 0.15, 0);

itemLeftStart = bbox_left + 10.5;
itemTopStart = bbox_top + 7;

for(i = 0; i < inventoryEndAt; ++i) {
    for(j = 0; j < playerInventoryWidth; ++j) {
        inventoryOnScreen = i;
        if(j == 0)    
            draw_text_transformed(itemLeftStart, itemTopStart + (i * 5), ds_grid_get(myItems, 0, i + scrolledAmount), 0.15, 0.15, 0);
        if(j == 1)
            draw_text_transformed(itemLeftStart + 20, itemTopStart + (i * 5), ds_grid_get(myItems, 1, i + scrolledAmount), 0.15, 0.15, 0);
        if(j == 3)
            draw_sprite_ext(ds_grid_get(myItems, j, i + scrolledAmount), 0, bbox_left + 6, itemTopStart + (i * 5) + 1, 0.5, 0.4,0,c_white,1);
            
    }
}

draw_rectangle(bbox_left + 2, (itemTopStart - 2) + ((itemSelected - scrolledAmount) * 5), bbox_right - 2, ((itemTopStart - 2) + (itemSelected - scrolledAmount) * 5) + 4, true);




/*
draw_sprite(sprItemBox, 0, objInventoryGUI.x, bbox_bottom + 8)
//view selected item infurmation

if(isEmpty)
    draw_text_ext_transformed(bbox_left + (sprite_get_xoffset(sprItemBox) / 2), view_wview[0] - sprite_get_yoffset(sprItemBox), emptyMessage, 18, sprite_get_width(sprItemBox) - textBorder, 0.18, 0.18, 0);
else
    draw_text_ext_transformed(bbox_left + (sprite_get_xoffset(sprItemBox) / 2), view_wview[0] - sprite_get_yoffset(sprItemBox) + 13, ds_grid_get(myItems, 2, itemSelected), 18, sprite_get_width(sprItemBox) * textBorder, 0.12, 0.12, 0);
*/