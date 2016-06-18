///ui_display()

player = instance_find(obj_player, 0);

hearts_y = 0;
spr_width = sprite_get_width(spr_heart);
for(hearts_x = 0; hearts_x < player.hp*spr_width; hearts_x += spr_width) {
    draw_sprite(spr_heart, 0, hearts_x, hearts_y);
}

