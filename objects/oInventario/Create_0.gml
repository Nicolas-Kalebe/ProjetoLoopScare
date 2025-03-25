comeco_x = 17;
comeco_y = 63;

escala=1;

slots_h = 6;
slots_y = 5;

global.slot_selecionado = 0;

total_slots = slots_h*slots_y;
tamanho_slot = 49;
buffer = 4; //tamanho do espaço entre as linhas do inventario

inventario_l = sprite_get_width(sInventario);
inventario_a= sprite_get_height(sInventario);

enum Armas{
	pica,
	xota,
	peito,
	bunda
}
enum Infos{
	item,
	quantidade,
	altura
}

grid_itens = ds_grid_create(Infos.altura, total_slots);
ds_grid_set_region(grid_itens, 0, 0, 1, total_slots -1, -1);

grid_itens[# Infos.item, 0] = Armas.pica;	
grid_itens[# Infos.quantidade, 0] = 3;

grid_itens[# Infos.item, 1] = Armas.xota;	
grid_itens[# Infos.quantidade, 1] = 3;

grid_itens[# Infos.item, 2] = Armas.peito;	
grid_itens[# Infos.quantidade, 2] = 3;

grid_itens[# Infos.item, 3] = Armas.bunda;	
grid_itens[# Infos.quantidade, 3] = 3;

