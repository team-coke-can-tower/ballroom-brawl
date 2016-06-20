///wall_step

player = instance_find(obj_player, 0);

if((player.yprev > (y+1)) || global.keymap[? "down"]) {
    mask_index = -1;
} else {
    mask_index = spr_wall;
}
