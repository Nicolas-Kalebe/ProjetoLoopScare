#region Inicializa
global.dialogando = true;
if(inicializar==false){ //Inicializa a função que pega a img do script
	scrDocumentos();
	audio_play_sound(snd_papel,1,0);
	inicializar=true;
}
#endregion

#region Mexer no documento

var _spd = 5;
var _margemX = sprite_get_width(img)/4 
var _margemY = sprite_get_height(img)/4 

if(_xx+_margemX<window_get_width()/2){ //Esquerda
	if(keyboard_check(ord("D"))){
		_xx += _spd; 
	}
}
	
if(_xx-_margemX>0){ //Direita
	if(keyboard_check(ord("A"))){
		_xx -= _spd;
	}
}

if(_yy*2<window_get_height()){ // Baixo
	if(keyboard_check(ord("S"))){
		_yy += _spd; 
	}
}
	
if(_yy>0){ // Cima
	if(keyboard_check(ord("W"))){ 
		_yy -= _spd; 
	}
}
	
#endregion	

#region Navegação nas páginas do Documento
var _numDeSprites = sprite_get_number(img);

if(keyboard_check_pressed(ord("F")) && pagina+1<=_numDeSprites){
	pagina++
}
if(keyboard_check_pressed(ord("F")) && pagina+1>_numDeSprites){
	instance_destroy(self);
}

if(keyboard_check_pressed(vk_left)&& pagina>0){
	pagina--;
}
if(keyboard_check_pressed(vk_right)&& pagina+1<_numDeSprites){
	pagina++;
}
#endregion