var player = instance_nearest(x, y, obj_Emma);

var distance = point_distance(x, y, player.x, player.y);
var activationDistance = 1000; 

if (distance <= activationDistance) {
    var speedX = -8; 
var speedY = 0; 

// Atualizar a posição do objeto
x += speedX;
y += speedY;
		
    if (!audio_is_playing(corvo2)) {
        audio_play_sound(corvo2, 1, false);
        alarm[0] = room_speed * (1000 div 1000);
    }

} 

if (x < 0 || x > room_width || y < 0 || y > room_height) {
    instance_destroy();
}