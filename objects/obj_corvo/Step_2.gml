if (animation_played && image_index >= image_number - 1 && animation_state != 2) {
    image_index = image_number - 1; 
    image_speed = 0; 
    animation_state = 1; 
    sprite_index = spr_corvo_salto; 
    image_index = 0; 
    image_speed = 2; 
	if(image_index >= image_number -1){
		var speedX = -7;
		var speedY = 5;
		x += speedX;
y += speedY;
	}
	
}

if(animation_state == 2){

var speedX = -7; 
var speedY = -5; 


x += speedX;
y += speedY;
}