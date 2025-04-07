var _guil = display_get_gui_width();
var _guia = display_get_gui_height();

var _mx = device_mouse_x_to_gui(0);
var _my = device_mouse_y_to_gui(0);

var _invx = (_guil) / 2;
var _invy = (_guia) / 2;
draw_sprite_ext(sInventario, 0, _invx, _invy, 1, 1, 0, c_white, 1);

// Inicialização da seleção
if (!variable_instance_exists(id, "selected_slot")) {
   // selected_slot = -1;
}

// Controles WASD/Setas
var key_up = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
var key_down = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
var key_left = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"));
var key_right = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"));

// Navegação circular
if (selected_slot == -1 && (key_up || key_down || key_left || key_right)) {
    selected_slot = 0; // Começa no slot 0 se movimentar com teclado
}

if (selected_slot != -1) {
    // Calcula a posição atual no grid
    var current_col = selected_slot mod slots_h; // Coluna atual (0 a slots_h-1)
    var current_row = selected_slot div slots_h;  // Linha atual
    
    // Movimento horizontal (direita/esquerda)
    if (key_right) {
        current_col = (current_col + 1) mod slots_h; // Volta para 0 se passar do último
        selected_slot = current_row * slots_h + current_col;
    }
    else if (key_left) {
        current_col = (current_col - 1 + slots_h) mod slots_h; // Volta para slots_h-1 se for menor que 0
        selected_slot = current_row * slots_h + current_col;
    }
    
    // Movimento vertical (cima/baixo)
    if (key_down) {
        current_row = (current_row + 1) mod (total_slots div slots_h); // Volta para a primeira linha se passar da última
        selected_slot = current_row * slots_h + current_col;
    }
    else if (key_up) {
        current_row = (current_row - 1 + (total_slots div slots_h)) mod (total_slots div slots_h); // Volta para a última linha se subir da primeira
        selected_slot = current_row * slots_h + current_col;
    }
}

var ix = 0;
var iy = 0;
var mouse_hover = -1;

for (var i = 0; i < total_slots; i++) {
    var _slotx = (_invx/_guil) + comeco_x + ((tamanho_slot + buffer) * ix);
    var _sloty = (_invy/_guia) + comeco_y + ((tamanho_slot + buffer) * iy);
    
    // Pré-seleção (mouse over)
    if (point_in_rectangle(_mx, _my, _slotx, _sloty, _slotx + tamanho_slot, _sloty + tamanho_slot)) {
        mouse_hover = i;
        draw_sprite_ext(sSeletor, 0, _slotx, _sloty, 1, 1, 0, c_white, 0.3);
        
        // Seleção ao clicar
        if (device_mouse_check_button_pressed(0, mb_left)) {
            selected_slot = i;
        }
    }
    
    // Seleção atual (teclado ou clique)
    if (i == selected_slot) {
        draw_sprite_ext(sSeletor, 0, _slotx, _sloty, 1, 1, 0, c_white, 0.8);
    }
    
    // Desenha o item
    if (grid_itens[# Infos.item, i] != -1) {
        draw_sprite_ext(sItens, grid_itens[# 0, i], _slotx, _sloty, 1, 1, 0, c_white, 1);
    }
    
    ix++;
    if (ix >= slots_h) {
        ix = 0;
        iy++;
    }
}