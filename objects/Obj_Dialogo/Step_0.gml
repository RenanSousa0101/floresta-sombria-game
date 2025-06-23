 if inicializar == false{
src_textos();
inicializar = true;
}

if keyboard_check_pressed(ord("F")){
	if (texto_grid[# Infos.Lado, pagina] == 1){
		global.cont = false;
		if (!audio_is_playing(Folha)) {
        audio_play_sound(Folha, 1, false);
        alarm[0] = room_speed * (1000 div 1000);
		global.leu = true;
		}
	}
	
	if caractere < string_length(texto_grid[# Infos.Texto, pagina]){
	caractere = string_length(texto_grid[# Infos.Texto, pagina]);
	
	}else{
		alarm[0] = 1;
		caractere = 0;
	if pagina < ds_grid_height(texto_grid) - 1{
		pagina++;
	}else{
		global.dialogo = false;
		instance_destroy();
		}
	}
		
}