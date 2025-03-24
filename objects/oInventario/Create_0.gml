escala = 1;

comeco_x = 149 * escala;
comeco_y = 86 * escala;

slots_h = 4;
slots_y = 4;

total_slots = slots_h*slots_y;
tamanho_slot = 16 * escala;
buffer = 7 * escala; //tamanho do espaço entre as linhas do inventario

inventario_l = sprite_get_width(sInventario) * escala;
inventario_a= sprite_get_height(sInventario) * escala;