//Função para obter as váriaveis do NPC
if(inicializar==false){
	scrDialogos();
	inicializar=true;
}
//Pular a escrita do texto rapidamente ao apertar F e destruir a caixa de dialogo ao acabar o texto
if(keyboard_check_pressed(ord("F"))){
	if (caractere<string_length(texto[pagina])){
		caractere = string_length(texto[pagina])
	}else{
		if(pagina < array_length(texto)-1){
			pagina++;
			caractere=0;
		}else{
			instance_destroy();
		}
	}
}