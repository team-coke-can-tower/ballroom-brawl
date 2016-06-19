///pause_esc_pressed()

global.paused = not global.paused;

if(global.paused) {
    instance_deactivate_all(true);
    audio_pause_all();
} else {
    instance_activate_all();
    audio_resume_all();
}

