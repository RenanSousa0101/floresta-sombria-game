if(surface_exists(surf)) {
    surface_set_target(surf);
    // Desenhando na surf
    draw_clear_alpha(c_black, 0);
    gpu_set_fog(true, c_black, 0, 0);
    with(obj_Emma) {
        // Verifica se a personagem está no ar
        if (!place_meeting(x, y+1, obj_chao)) {
            draw_sprite_ext(sprite_index, image_index, x, y+sprite_height+40, image_xscale, -image_yscale+0.6, image_angle, c_white, .8);
            // diminui a posição vertical da sombra em 20 pixels
        } else {
            draw_sprite_ext(sprite_index, image_index, x, y+sprite_height-38, image_xscale, -image_yscale+0.6, image_angle, c_white, .8);
        }
    }
    gpu_set_fog(false, c_black, 0, 0);
    surface_reset_target();
    draw_surface(surf, 0, 0);
} else {
    surf = surface_create(room_width, room_height);
}







