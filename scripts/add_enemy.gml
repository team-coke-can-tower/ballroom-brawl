///add_enemy(on_left)

on_left = argument0;

var enemy_x;
var enemy_y = room_height - 64;

if(on_left) {
    enemy_x = 0;
} else {
    enemy_x = room_width;
}

if(irandom(1) == 0) {
    enemy_y -= sprite_get_height(spr_lady)/2;
    enemy = instance_create(enemy_x, enemy_y, obj_lady);
} else {
    enemy_y -= sprite_get_height(spr_gentleman)/2;
    enemy = instance_create(enemy_x, enemy_y, obj_gentleman);
}

enemy.generator = id;
