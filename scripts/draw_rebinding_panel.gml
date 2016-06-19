//var vast_shadow = font_add("VastShadow-Regular.ttf", 14, false, false, 32, 128)

image_index = 0
if(mouse_over) image_index = 1
if(global.option_activated == option_index) image_index = 2

draw_sprite(sprite_index, image_index, x, y)
image_speed = 0

draw_set_colour(c_white)
//draw_set_font(vast_shadow)
draw_set_halign(fa_center)
draw_text(x, y - 10, get_str_key_pressed(global.keymap[? controling_key]))

draw_text(x - 130, y - 10, controling_key + ":")
