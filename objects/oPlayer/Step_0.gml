#region Movimentação NOVA
key_right = keyboard_check(ord("D"));
key_left = keyboard_check(ord("A"));

var move = key_right - key_left; //Retorna 1 ou -1
hspd = move*spd; //define velocidade positiva ou negativa
vspd = vspd + grav;

if (hspd != 0 && global.dialogando == false) { //Se velocidade diferente de zero altera o sprite e vira ela pro lado certo.
	sprite_index = sMarleWalk;
    image_xscale = sign(hspd) * abs(image_xscale);
	
	show_debug_message(image_xscale);
	
}else{
	sprite_index = sMarleStand //Se parada altera para o sprite parado.
}

#endregion

#region Colisão vertical
if(place_meeting(x,y+vspd,oColisao)){ // Checa se ta colidindo
	while(!place_meeting(x,y+sign(vspd),oColisao)){
		y = y+sign(vspd); // Nao deixa entrar no chao
	}
	vspd=0 // zera a velocidade se estiver colidindo.
}
y = y+vspd //Cai '-'
#endregion

#region Colisão horizontal
if(place_meeting(x+hspd,y,oColisao)){ // Checa se ta colidindo
	while(!place_meeting(x+sign(vspd),y,oColisao)){
		x = x+sign(hspd); //Checa se ta colidindo
	}
	hspd=0
}
if global.dialogando == false { //se nao tiver em um dialogo
	x = x+hspd; // Anda '-'
}
#endregion

#region Pular
/*if(global.dialogando==false){	
	if(keyboard_check(vk_space) && place_meeting(x, y + 1, oColisao)) {
		grav = -10; // Impulso para cima
	}if(keyboard_check_released(vk_space)){
		grav = dfgrav
	}
}*/
#endregion

#region Dialogo
if(distance_to_object(oPaiNPCs) < 10) { // Checa a distancia de qualquer npc da familia e o permite dialogo se ja nao estiver em um
    if (keyboard_check_pressed(ord("F")) && global.dialogando == false) {
        var _npc = instance_nearest(x, y, oPaiNPCs);
        var _dialogo = instance_create_layer(x, y, "lDialogo", oDialogo);
        
        _dialogo.npc_nome = _npc.npc_nome; //absorvendo as variaveis do npc para que a caixa de dialogo saiba o que mostrar.
        _dialogo.localy = _npc.localy;
        _dialogo.localx = _npc.localx;
	}
}

#endregion

#region Lanterna
if(keyboard_check_pressed(ord("T"))){
	global.lanterna = !global.lanterna
}

#endregion