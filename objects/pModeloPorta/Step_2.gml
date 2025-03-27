var _sala = 0;

#region pause
if(global.pause==true){
	image_speed=0
	exit;
}else{image_speed=1}
#endregion

#region Atravessar porta
if(global.entrando == false && distance_to_object(oPlayer)<10 && keyboard_check_pressed(ord("W"))){
	global.entrando=true;
	fade_out_on=true;	
	audio_play_sound(snd_doorOpening,1,0);
}
if (fade_out >= 1) {
		oControle.fade_in = true;
		global.entrando = false;
		room_goto(_sala); // Exemplo: troca de sala
}
#endregion