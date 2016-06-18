///player_punch()

// TODO: use punch animations

if(not has_punched) {
    var punch;
    if (facing_left) {
        punch = instance_create(x-40, y, obj_attack);
    } else {
        punch = instance_create(x+40, y, obj_attack);
    }
    punch.from_player = true;
    punch.damage = 1;
    
    has_punched = true;
    alarm[0] = 10;  // delay until next punch
}
