if(inicializar==false){
	global.pause = true;
	global.menu = true;
	inicializar = true;
}

if(keyboard_check_pressed(vk_escape)){
	global.pause=false;
	global.menu=false;
	instance_destroy(self);
}