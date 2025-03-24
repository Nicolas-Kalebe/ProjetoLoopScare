#region Atravessar porta
if(global.entrando == false && distance_to_object(oPlayer)<10 && keyboard_check_pressed(ord("W"))){
	global.entrando=true;
	fade_out_on=true;	
	audio_play_sound(snd_doorOpening,1,0);
}
if (fade_out >= 1) {
		oControle.fade_in = true;
		global.entrando = false;
		room_goto(Room1); // Exemplo: troca de sala
}
#endregion