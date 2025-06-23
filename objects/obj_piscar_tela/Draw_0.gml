// Desenha o conteúdo da surface na tela
if (surface_exists(surface)) {
    draw_surface(surface, 0, 0);
}

// Verifica se o efeito de piscar está ativado
if (global.isBlinking) {
    // Atualiza o temporizador
    blinkTimer += delta_time;

    // Verifica se o temporizador atingiu a duração de cada piscada
    if (blinkTimer >= global.blinkDuration) {
        // Inverte a visibilidade da surface
        if (surface_exists(surface)) {
            surface_free(surface);
            surface = -1;
        } else {
            surface = -1;
            surface = surface_create(room_width, room_height);
            surface_set_target(surface);
            draw_clear_alpha(c_black, global.opaci);
            surface_reset_target();
        }

        // Reinicia o temporizador
        blinkTimer = 0;
    }
}