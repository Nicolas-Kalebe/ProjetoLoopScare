#region FadeIn Draw
if(fade_in){
	fade_in_alpha -= fade_speed; 
	draw_set_color(c_black);          // Cor preta para o fade
	draw_set_alpha(fade_in_alpha);            // Define a transparência
	draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
	draw_set_alpha(1);                // Restaura a transparência para o padrão
}
#endregion

if(draw_pause==true && global.menu == false){
	var _guix = display_get_gui_width();
	var _guiy = display_get_gui_height()
	draw_set_color(c_black);
	draw_set_alpha(0.8)
	draw_rectangle(0,0,_guix,_guiy,0);
	draw_set_alpha(1)
}