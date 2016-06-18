///player_left()

if (not (has_punched or been_hit)) {
    hspeed = -x_speed;
    
    if (not facing_left) {
        facing_left = true;
        image_xscale = -image_xscale;
    }
}
