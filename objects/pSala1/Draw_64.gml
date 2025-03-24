#region Fadeout ao atravessar porta
if(fade_out_on==true){
	fade_out += fade_speed; 
	draw_set_color(c_black);          // Cor preta para o fade
	draw_set_alpha(fade_out);            // Define a transparência
	draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
	draw_set_alpha(1);                // Restaura a transparência para o padrão
}
#endregion