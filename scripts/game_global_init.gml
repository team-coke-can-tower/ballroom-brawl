///game_global_init()

instance_create(x, y, obj_ui);
instance_create(x, y, obj_enemy_gen);
instance_create(x, y, obj_pause);
instance_create(x, y, obj_clock);

player = instance_find(obj_player, 0);

audio_play_sound(snd_main_theme, 0, true);
