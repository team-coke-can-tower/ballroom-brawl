///player_right()

if (not (has_punched or been_hit)) {
    hspeed = x_speed;
    
    if (facing_left) {
        facing_left = false;
        image_xscale = -image_xscale;
    }
}
