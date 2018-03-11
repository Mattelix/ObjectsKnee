/// @description more hit stuff
if(hit) {
	shader_set(shdrFlash);
	draw_self();
	shader_reset();
	
} else {
	draw_self();	
}
	
