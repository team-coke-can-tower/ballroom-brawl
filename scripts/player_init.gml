///init()

x_speed = 0;
y_speed = 0;

// last place player was before collision
xprev = 0;
yprev = 0;

run_hspeed = 7;
jump_vspeed = -20;

v_acc = 1;
h_acc = 0;

image_speed = 0.25;

hp = 20;
is_dead = false;
falling = false;
pre_jumping = false;    // getting ready to jump

facing_left = false;
has_punched = false;
been_hit = false;

