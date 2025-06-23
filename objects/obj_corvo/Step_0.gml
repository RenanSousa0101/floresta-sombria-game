var player = instance_nearest(x, y, obj_Emma); // substitua "obj_player" pelo nome do objeto do jogador

var distance = point_distance(x, y, player.x, player.y);
var activationDistance = 300; // distância de ativação da animação

if (distance <= activationDistance && !animation_played) {
    sprite_index = Spr_corvo_grito;
	animation_played = true;
    image_index = 0; // Define o índice inicial da animação
	image_speed = 2; // Velocidade da animação
	if (sprite_index == Spr_corvo_grito) {
			if (!audio_is_playing(Corvo) && sprite_index == Spr_corvo_grito) {
        audio_play_sound(Corvo, 1, false);
        alarm[0] = room_speed * (1000 div 1000);
    }
}

	
} 

if (x < 0 || x > room_width || y < 0 || y > room_height) {
    instance_destroy();
}
