///clock_draw()

minutes = global.time_score div 60;
seconds = global.time_score % 60;

draw_set_color(c_red);
draw_set_alpha(1);
draw_set_font(fnt_arial);

if(seconds < 10) {
    sec_str = "0" + string(seconds);
} else {
    sec_str = string(seconds);
}

draw_text(520, 20, string(minutes) + ":" + sec_str);
