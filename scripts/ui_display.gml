///ui_display()

player = instance_find(obj_player, 0);

hearts_y = 0;
spr_width = sprite_get_width(spr_heart);
for(hearts_x = 0; hearts_x < player.hp*spr_width; hearts_x += spr_width) {
    draw_sprite(spr_heart, 0, hearts_x, hearts_y);
}

// display health of each enemy
for(enemy_index = 0; enemy_index < instance_number(obj_enemy); enemy_index += 1) {
    enemy = instance_find(obj_enemy, enemy_index);
    with(enemy) {
        // Assumes enemy has an hp attribute.
        hp_sq_side = 10;
        bar_x = x - abs(sprite_width/2);    // abs in case xscale is negative
        bar_y = y - sprite_height;
        bar_width = hp * hp_sq_side * 2;
        bar_height = hp_sq_side;
        var current_pos;
        for(current_pos = bar_x; current_pos < (bar_x+bar_width); current_pos += hp_sq_side*2) {
            // TODO: find a better function
            draw_rectangle_color(current_pos, bar_y, current_pos + (hp_sq_side*2), bar_y + bar_height,
            c_red, c_red, c_red, c_red, false);
        }
        for(; current_pos < (bar_x+60); current_pos += hp_sq_side*2) {
            // TODO: find a better function
            draw_rectangle_color(current_pos, bar_y, current_pos + (hp_sq_side*2), bar_y + bar_height,
            c_black, c_black, c_black, c_black, false);
        }
    }
}



