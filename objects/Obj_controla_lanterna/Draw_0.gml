if (!surface_exists(surf)) {
    surf = surface_create(room_width, room_height);
} else {
    surface_set_target(surf);
    draw_clear_alpha(c_black, 0.3);
    //gpu_set_blendmode(bm_subtract);
   // with (obj_Emma) {
		
		//if(hspd < 0){
			//direct = -1;
			//}else if(hspd > 0){
			//direct = 1;
			//}
        //if (luz){
			
			//if(direct == 1){
           // var _valor = random_range(-.2, .2);
           // draw_sprite_ext(spr_lanterna, 0, x, y, image_xscale, image_yscale, image_angle, c_white, 1);
			//}else if(direct == -1){
				// draw_sprite_ext(spr_lanterna, 0, x, y,image_xscale, image_yscale, image_angle, c_white, 1);
			//}
		//}
    //}
	//gpu_set_blendmode(bm_normal);
    surface_reset_target();
    draw_surface(surf, 0, 0);
}