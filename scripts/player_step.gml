///player_step()

y = round(y);
x = round(x);

if(!place_meeting(x, y+y_speed+1, obj_wall)) {
    y_speed += v_acc;
    show_debug_message("no collision");
} else {
    show_debug_message("collided");
} 

if(!place_meeting(x+h_acc, y, obj_wall)) {
    x_speed += h_acc;
}

if((sprite_index == spr_player_jump) and (image_index == 5)) {
    sprite_index = spr_player_fall;
    image_index = 0;
}

if((sprite_index == spr_player_land) and (image_index == 3)) {
    sprite_index = spr_player;
    image_index = 0;
}

if(!place_meeting(x, y, obj_wall)) {
    xprev = x;
    yprev = y;
}

x += x_speed;
y += y_speed;

