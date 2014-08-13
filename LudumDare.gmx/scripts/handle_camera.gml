if mouse_wheel_down(){
    zoom=1.1;      
    view_xview[1] *= zoom;
    view_yview[1] *= zoom;
    view_wview[1]*=zoom;
    view_hview[1]*=zoom;
}

if mouse_wheel_up(){
    zoom=0.9;      
    view_xview[1] *= zoom;
    view_yview[1] *= zoom;
    view_wview[1]*=zoom;
    view_hview[1]*=zoom;  
}
