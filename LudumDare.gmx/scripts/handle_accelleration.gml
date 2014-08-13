if(moving==true && global._can_jump == true){
    // check to see if we should accelerate more
    if( move_accel < move_accel_max ){
        move_accel += accel;
    }
}

if(move_speed = 0){
    if(action!="JUMP" && action != "FALLING"){action="IDLE";}
}
