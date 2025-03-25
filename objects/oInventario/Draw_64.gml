var _guil = display_get_gui_width();
var _guia = display_get_gui_height();

var _mx = device_mouse_x_to_gui(0);
var _my = device_mouse_y_to_gui(0);

if (global.inventario == true) {
    var _invx = (_guil) / 2; //320 338 
    var _invy = (_guia) / 2; //80
    draw_sprite_ext(sInventario, 0, _invx, _invy, 1, 1, 0, c_white, 1);
	var ix= 0;
	var iy=0;
	
	for(var i=0;i<total_slots;i++){
		var _slotx = (_invx/_guil) + comeco_x  + ((tamanho_slot + buffer) * ix);
		var _sloty = (_invy/_guia) + comeco_y + ((tamanho_slot + buffer) * iy);
		if(point_in_rectangle(_mx, _my, _slotx, _sloty, _slotx + tamanho_slot, _sloty + tamanho_slot)){
			draw_sprite_ext(sSeletor, 0, _slotx, _sloty, 1, 1, 0, c_white, 0.3);
		}
		if (grid_itens[# Infos.item, i] != -1){
			draw_sprite_ext(sItens, grid_itens[# 0, i], _slotx, _sloty, 1, 1, 0, c_white, 1);
		}
		ix++;
		if(ix>=slots_h){
			ix=0;
			iy++;
		}
}
}
