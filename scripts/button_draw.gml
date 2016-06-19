if(selected || button_index == global.tabui.button_selected){
    draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, make_color_rgb(213, 174, 133), 1)
}
else{
    draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, c_white, 1)
}
