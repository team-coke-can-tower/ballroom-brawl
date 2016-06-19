///pause_step()

if(global.paused) {
    //Display frozen game in background (game is deactivated, so is now invisible)
    if(surface_exists(frozen_screen_surf)) {
        draw_surface(frozen_screen_surf, 0, 0);
    }
    draw_set_color(c_black);
    draw_set_alpha(0.5);
    draw_rectangle(0, 0, room_width, room_height, 0);
    draw_set_alpha(1);
    draw_set_color(c_white);
    //draw pause text
    draw_text(view_wview[0]/2, view_hview[0]/4, "Paused");
    //draw buttons
    //if(resume_button != noone) draw_sprite(quit_button.sprite_index, quit_button.image_index, quit_button.x, quit_button.y);
} else {
    //Make frozen_screen_surf show the most recent unpaused moment in game
    if(!surface_exists(frozen_screen_surf)) {
       frozen_screen_surf = surface_create(view_wview[0], view_hview[0]);
    }
    surface_copy(frozen_screen_surf, 0, 0, application_surface);
}
