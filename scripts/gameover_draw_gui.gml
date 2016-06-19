///gameover_draw_gui

if(drawing_time) {
    minutes = global.time_score div 60;
    seconds = global.time_score % 60;
    
    draw_set_color(c_maroon);
    draw_set_alpha(1);
    draw_set_font(fnt_arial_gameover);
    
    if(seconds < 10) {
        sec_str = "0" + string(seconds);
    } else {
        sec_str = string(seconds);
    }
    
    draw_text(170, 50, "Your Score: " + string(minutes) + ":" + sec_str);
}
