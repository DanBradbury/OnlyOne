/// MAKE THINGS HAPPEN
image_index += 1;
gravity = 1;


// if dying create a slow upward float to heaven
if(global.death_start == true){
    gravity = 0;
    vspeed = -3;
}

// verify that we know when we have terminated the jump 
if(vspeed > 0){
    action = "FALLING";
    global._jump = false;
    global._can_jump = false;
    
    hit_active = false;
    if(vspeed > _max_fall_speed){
      vspeed = _max_fall_speed;
    }
}

// if we get launched into a -vertical movement
if(vspeed < 0){
    global._jump = true;        
}

// dont allow the player to jump
if(delay_jump == true){
    global._can_jump = false;
}

// set appropriate sprites
if( global._can_jump == false ){
    _draw_sprite = spr_player_jumping;
}

if( hit == true ){
    _draw_sprite = spr_player_hurt;
}

