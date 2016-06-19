///enemy_hurt()

attack = instance_nearest(x, y, obj_attack);

if(attack.from_player) {
    goto_state("hurt");
    hp -= 1;
    with(attack) {
        instance_destroy();
    }
    if (hp <= 0) {
        // TODO
        instance_destroy();
    }
}
