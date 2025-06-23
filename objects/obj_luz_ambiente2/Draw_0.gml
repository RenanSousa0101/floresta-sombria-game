if (!surface_exists(surf)) {
    surf = surface_create(7004, room_height);
} else {
    surface_set_target(surf);
    draw_clear_alpha(c_black, 0.5);
    gpu_set_blendmode(bm_subtract);
	with(obj_luz){
           
            draw_sprite_ext(sprite_index,image_index, x, y, image_xscale, image_yscale, image_angle, c_white, 1);
			
	}	
    with(obj_luz2){
           
            draw_sprite_ext(sprite_index,image_index, x, y, image_xscale, image_yscale, image_angle, c_white, 1);
			
	}	
	with(Obj_luz3){
           
            draw_sprite_ext(sprite_index,image_index, x, y, image_xscale, image_yscale, image_angle, c_white, 1);
			
	}
	with(Obj_luz4){
           
            draw_sprite_ext(sprite_index,image_index, x, y, image_xscale, image_yscale, image_angle, c_white, 1);
			
	}
	with(obj_luz5){
           
            draw_sprite_ext(sprite_index,image_index, x, y, image_xscale, image_yscale, image_angle, c_white, 1);
			
	}
	gpu_set_blendmode(bm_normal);
    surface_reset_target();
    draw_surface(surf, 0, 0);
}
