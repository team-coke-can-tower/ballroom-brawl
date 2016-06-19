///player_collide_wall

if((bbox_bottom-y_speed) < other.bbox_top) {
    falling = false;
    
    if(sprite_index == spr_player_fall) {
        sprite_index = spr_player_land;
        image_index = 0;
    }
}

dist = point_distance(x, y, xprev, yprev);
ang = degtorad(-point_direction(xprev, yprev, x, y));

xdir = cos(ang);
ydir = sin(ang);

x = xprev;
y = yprev;

repeat(dist) {
    if(place_meeting(x+xdir, y+ydir, obj_wall)) {
        if(place_meeting(x+xdir, y, obj_wall)) {
            x_speed = 0;
        }
        if(place_meeting(x, y+ydir, obj_wall)){
            y_speed = 0;
        }
        break;
    } else {
        x += xdir;
        y += ydir;
    }
}
