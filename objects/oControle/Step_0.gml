#region dialogando
if(instance_exists(oDialogo)){
	global.dialogando=true;
}else{
	global.dialogando=false;
}
#endregion

#region FadeIn ao spawnar e atravessar portas.
if (fade_in_alpha <= 0) {
	fade_in = false;
	fade_in_alpha = 1;
}
#endregion

#region Pausar
if(!instance_exists(oDocumento) && keyboard_check_pressed(vk_escape)){
	if(!instance_exists(oDialogo)){
		global.pause = !global.pause;
		draw_pause = global.pause;
	}
}
#endregion

show_debug_message(draw_pause)