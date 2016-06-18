// Performs a combo with an enemy

combo_num =  irandom_range(1, array_height_2d(global.combos))
combo_attack_index = 0
sprite_index = global.attack_offsets[global.combos[combo_num, 0]]
