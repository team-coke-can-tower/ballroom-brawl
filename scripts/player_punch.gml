///player_punch()

// TODO: use punch animations

if(not has_punched) {
    if (facing_left) {
        instance_create(x-40, y, obj_attack);
    } else {
        instance_create(x+40, y, obj_attack);
    }
    
    has_punched = true;
    alarm[0] = 10;  // delay until next punch
}
