if(keyboard_check(vk_right)){
    /// MOVE RIGHT
    if( global.death_start == false && freeze == false){
        move_speed = base_ms+move_accel
        x += move_speed;
        if(action!="JUMP"){action = "RUNNING";}
        moving = true;
        mov_dir = "right";
        image_xscale = 1;
        _draw_sprite = spr_player_running;
    }

}else if(keyboard_check(vk_left)){
    /// MOVE LEFT
    if( global.death_start == false && freeze = false){
        move_speed = -(base_ms+move_accel)
        x += move_speed;
        if(action!="JUMP"){action = "RUNNING";}
        mov_dir = "left";
        moving = true;
        image_xscale = -1;
        _draw_sprite = spr_player_running;
    }
}else if(keyboard_check(vk_escape)){
    instance_create(0,0,obj_pause);
    global.pause = true;
    pauseTime = current_time;
}

if(keyboard_check(vk_space)){
    /// HANDLE JUMP
    if (global._can_jump == true && global.death_start == false && freeze = false) {
        audio_play_sound(snd_jump, 10, false);
        vspeed = -21;
        action = "JUMP";
        global._can_jump = false;
        global._jump = true;
        global.landed = false;    
    }
}
