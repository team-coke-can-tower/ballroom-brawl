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
        bar_x = x - (sprite_width/2);
        bar_y = y - sprite_height - 10;
        bar_width = hp * 10;
        bar_height = 10;
        var current_pos;
        for(current_pos = bar_x; current_pos < (x+bar_width); current_pos += 10) {
            // TODO: find a better function
            draw_rectangle_color(current_pos, bar_y, current_pos+10, bar_y+10,
            c_red, c_red, c_red, c_red, c_red);
        }
        for(; current_pos < (x+30); current_pos += 10) {
            // TODO: find a better function
            draw_rectangle_color(current_pos, bar_y, current_pos+10, bar_y+10,
            c_black, c_black, c_black, c_black, c_black);
        }
    }
}



