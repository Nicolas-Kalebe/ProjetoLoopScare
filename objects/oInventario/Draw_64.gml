var _guil = display_get_gui_width();
var _guia = display_get_gui_height();

var _mx = device_mouse_x_to_gui(0);
var _my = device_mouse_y_to_gui(0);

if (global.inventario) {
    var _invx = (_guil) / 2; 
    var _invy = (_guia) / 2;
    draw_sprite_ext(sInventario, 0, _invx, _invy, 1, 1, 0, c_white, 1);
    
    var ix = 0;
    var iy = 0;
    
    for (var i = 0; i < total_slots; i++) {
        var _slotx = (_invx / _guil) + comeco_x + ((tamanho_slot + buffer) * ix);
        var _sloty = (_invy / _guia) + comeco_y + ((tamanho_slot + buffer) * iy);

        // Verifica se o mouse está sobre o slot
        if (point_in_rectangle(_mx, _my, _slotx, _sloty, _slotx + tamanho_slot, _sloty + tamanho_slot)) {
            global.slot_selecionado = i; // Define o slot selecionado pelo mouse
        }
		if (global.slot_selecionado >= total_slots) {
				global.slot_selecionado = 0; // Volta para o primeiro slot ao ultrapassar
		}
        // Desenha apenas um seletor, baseado na seleção atual
        if (i == global.slot_selecionado) {
            draw_sprite_ext(sSeletor, 0, _slotx, _sloty, 1, 1, 0, c_white, 0.3);
        }

        // Desenha os itens dentro do slot
        if (grid_itens[# Infos.item, i] != -1) {
            draw_sprite_ext(sItens, grid_itens[# 0, i], _slotx, _sloty, 1, 1, 0, c_white, 1);
        }

		if (keyboard_check_pressed(vk_space)) { // Verifica se o botão esquerdo foi pressionado
			if (grid_itens[# Infos.item, global.slot_selecionado] != -1) { // Se o slot tem um item
        global.item_equipado = grid_itens[# 0, global.slot_selecionado]; // Guarda a sprite do item
			}
		}
        ix++;
        if (ix >= slots_h) {
            ix = 0;
            iy++;
        }
    }
}
