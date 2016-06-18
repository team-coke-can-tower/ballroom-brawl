///player_hurt

attack = instance_nearest(x, y, obj_attack);

if(not attack.from_player) {
    hp -= attack.damage;
    
    if(hp <= 0) {
        is_dead = true;
    } else {
        // TODO: hurt animation
    }
    
    with(attack) {
        instance_destroy();
    }
}
