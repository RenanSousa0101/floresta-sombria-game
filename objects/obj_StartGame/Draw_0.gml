
	
var _video_Data = video_draw();
var _videoStatus = _video_Data[0];

if (_videoStatus == 0) {
    var _videoSurface = _video_Data[1];
    var _screenWidth = display_get_width();
    var _screenHeight = display_get_height();
    
    draw_surface_stretched(_videoSurface, 0, 0, _screenWidth, _screenHeight);

    // Liberar a memória da superfície de vídeo quando não for mais necessária
    surface_free(_videoSurface);
}
