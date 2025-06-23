if (inicializar == true) {
    var _guil = display_get_gui_width();
    var _guia = display_get_gui_height();

    var _xx = 0;
    var _yy = _guia - 200;
    var _c = c_black;
    var _sprite = texto_grid[#Infos.Retrato, pagina];
    draw_set_font(fnt_dialogo);
	var _texto = string_copy(texto_grid[# Infos.Texto, pagina],0,caractere);
	var _textoCompleto = string_length(texto_grid[#Infos.Texto, pagina]);
	var _textoTerminado = (caractere >= _textoCompleto);
	
    if (texto_grid[# Infos.Lado, pagina] == 0) {
		if(!_textoTerminado){
        draw_rectangle_color(_xx + 200, _yy, 1200, _guia, _c, _c, _c, _c, true);
        draw_text(_xx + 216, _yy - 32, texto_grid[#Infos.Nome, pagina]);
        draw_text_ext(_xx + 232, _yy + 32, _texto, 32, 1000);
        
        draw_sprite_ext(_sprite, image_index, 100, 740, 0.3, 0.4, 0, c_white, 1);
        
        image_speed = 0.09; // Define a velocidade da animação
        image_index += image_speed; // Atualiza o índice da imagem animada
		}else {
            draw_rectangle_color(_xx + 200, _yy, 1200, _guia, _c, _c, _c, _c, true);
			draw_text(_xx + 216, _yy - 32, texto_grid[#Infos.Nome, pagina]);
			draw_text_ext(_xx + 232, _yy + 32, _texto, 32, 1000);
            _sprite = spr_Emma_calado; // Substitua "nova_sprite" pelo nome ou ID da nova sprite
            draw_sprite_ext(_sprite, 0, 100, 740, 0.3, 0.4, 0, c_white, 1);
			draw_sprite_ext(Spr_Tecla_F, 0, 1150, 700, 0.3, 0.4, 0, c_white, 1);
        }
    }
    else {
        
		draw_sprite_ext(_sprite, 0, 600, 360, 0.6, 0.4, 0, c_white, 1);
		
		if (!audio_is_playing(folha2) && global.cont == false) {
        audio_play_sound(folha2, 1, false);
        alarm[0] = room_speed * (1000 div 1000);
		global.cont = true;
		
    }
  }
}