draw_set_colour(c_black);
draw_rectangle(0, 248, 248, 264, false);

if(state = states.fightMode)
{
draw_set_colour(c_white);
draw_text_transformed(3, 246, "Choose direction to attack", 1, 0.8, 0);
}
draw_text(0, 0, hp);
