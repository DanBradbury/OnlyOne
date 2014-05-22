wave = argument[0];
handler = argument[1];

//handler.alarm[0] = 10; // replace with actual wave
if(wave==1){
    SNAILS = 10; PACKS=2;
    // spawn snails
    space = 200; change = 3;
    spawn_snail(space);   
    spawn_snail(space*2);         
}
