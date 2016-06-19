///game_global_step()

if(player.is_dead) {
    // All code for player death goes here
    audio_stop_all();
    room_goto(rm_losing_screen);
}
