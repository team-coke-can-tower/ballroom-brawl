///ui_display()

var player = instance_find(obj_player, 0);

var hearts_y = 0;
var spr_width = sprite_get_width(spr_heart);
var hearts_x = 0;
for(var heart_index = 0; heart_index < 10; heart_index++) {
    if(player.hp >= heart_index*2){
        draw_sprite(spr_heart, 0, hearts_x, hearts_y);
    }
    else if (player.hp > heart_index*2 - 1){
        draw_sprite(spr_heart, 1, hearts_x, hearts_y);
    }
    else {
        draw_sprite(spr_heart, 2, hearts_x, hearts_y);
    }
    hearts_x += spr_width
}

// display health of each enemy
for(enemy_index = 0; enemy_index < instance_number(obj_enemy); enemy_index += 1) {
    enemy = instance_find(obj_enemy, enemy_index);
    with(enemy) {
        // Assumes enemy has an hp attribute.
        hp_sq_side = 10;
        bar_x = x - 30;    // abs in case xscale is negative
        bar_y = y - (sprite_height/2) - 40;
        bar_width = hp * hp_sq_side * 2;
        bar_height = hp_sq_side;
        var current_pos;
        for(current_pos = bar_x; current_pos < (bar_x+bar_width); current_pos += hp_sq_side*2) {
            used_pos = current_pos - view_xview[0];
            draw_rectangle_color(used_pos, bar_y, used_pos + (hp_sq_side*2), bar_y + bar_height,
            c_red, c_red, c_red, c_red, false);
        }
        for(; current_pos < (bar_x+60); current_pos += hp_sq_side*2) {
            used_pos = current_pos - view_xview[0];
            draw_rectangle_color(used_pos, bar_y, used_pos + (hp_sq_side*2), bar_y + bar_height,
            c_black, c_black, c_black, c_black, false);
        }
    }
}



