var player = instance_nearest(x, y, obj_Emma); // substitua "obj_Emma" pelo nome do objeto do jogador

var distance = point_distance(x, y, player.x, player.y);
var activationDistance = 2000; // distância de ativação da animação

if (distance <= activationDistance) {
    var speedX = -100; // Altere o valor para a velocidade desejada no eixo X
    var speedY = 0; // Altere o valor para a velocidade desejada no eixo Y
	
    if (!audio_is_playing(Vulto)) {
        audio_play_sound(Vulto, 1, false);
        alarm[0] = room_speed * (1000 div 1000);
    }

    // Atualizar a posição do objeto
    x += speedX;
    y += speedY;
	
    if (x < 0 || x > room_width || y < 0 || y > room_height) {
        // O objeto saiu da room, parar de se mover e destruir
        speedX = 0;
        speedY = 0;
        instance_destroy();
    }
}
