 if (animation_state == 1 && image_index = image_number - 1) {
    image_index = 0; // Reinicia o índice para o primeiro frame da segunda animação
    image_speed = 0; // Pausa a animação
    animation_state = 2; // Alterna para o estado da animação de voo
    sprite_index = spr_corvo_voando; // substitua "spr_corvo_voando" pelo nome da sprite da animação de voo
    image_index = 0; // Define o índice inicial da animação de voo
    image_speed = 2; // Velocidade da animação de voo
	
	if (sprite_index == spr_corvo_voando) {
			if (!audio_is_playing(voando) && sprite_index == spr_corvo_voando) {
        audio_play_sound(voando, 1, false);
        alarm[0] = room_speed * (1000 div 1000);
    }
}
	
}