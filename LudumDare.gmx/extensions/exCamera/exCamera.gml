#define ex_camera_create

var _obj;

_view = argument[0];
_view_object = argument[1];

_obj = instance_create(0, 0, obj_ex_camera);
_obj._view = _view;
_obj._view_object = _view_object;

if (instance_exists(_view_object)) {
    _obj.x = _view_object.x;
    _obj.y = _view_object.y;
	_obj._view_x_offset = 0;
	_obj._view_y_offset = 0;
}

if (view_enabled == false) {
    view_enabled = true;
}

view_visible[_view] = true;

view_object[_view] = -1;

view_xview[_view] = 0;
view_yview[_view] = 0;
view_hspeed[_view] = -1;
view_vspeed[_view] = -1;
view_hborder[_view] = -1;
view_vborder[_view] = -1;

return _obj.id;


#define ex_camera_destroy

var _obj = argument[0];

if (instance_exists(_obj)) {

    with(argument[0]) {
        view_visible[_view] = false;
        instance_destroy();
    }
    
    return true;

} else {
    return false;
}


#define ex_camera_fade_in

var _camera;

_camera = argument[0];

with(_camera) {

    _fade_time = 0;
    _fade_ext_time = 0;
    
    _fade_start = _fade_alpha;
    _fade_end = 0;
    _fade_duration = argument[1];
    
    if (_fade_duration == 0) {
        _fade_duration = 1;
    }
    _fade_ext = false;
    _fx_fade = true;
    
}


#define ex_camera_fade_out

var _camera;

_camera = argument[0];

with(_camera) {

    _fade_time = 0;
    _fade_ext_time = 0;
    
    _fade_start = _fade_alpha;
    _fade_end = 1;
    _fade_duration = argument[1];
    
    if (_fade_duration == 0) {
        _fade_duration = 1;
    }
    
    _fade_ext = false;
    _fx_fade = true;

}


#define ex_camera_fade_out_ext

var _camera;

_camera = argument[0];

with(_camera) {

    _fade_time = 0;
    _fade_ext_time = 0;
    
    _fade_start = _fade_alpha;
    _fade_end = 1;
    _fade_duration = argument[1];
    
    if (_fade_duration == 0) {
        _fade_duration = 1;
    }
    
    _fade_ext = true;
    _fade_room = argument[2];
    _fade_delay = argument[3];
    
    _fx_fade = true;

}


#define ex_camera_fade_to

var _camera;

_camera = argument[0];

with(_camera) {

    _fade_time = 0;
    _fade_ext_time = 0;
    
    _fade_start = _fade_alpha;
    _fade_end = argument[1];
    _fade_duration = argument[2];
    
    if (_fade_duration == 0) {
        _fade_duration = 1;
    }
    _fade_ext = false;
    _fx_fade = true;

}


#define ex_camera_flash

var _camera;

_camera = argument[0];

with(_camera) {
    
    _flash_time = 0;
    _flash_start = argument[1];
    _flash_end = 0;
    _flash_duration = argument[2];
    
    _fx_flash = true;
}


#define ex_camera_get_fade_alpha

var _camera;

_camera = argument[0];

with(_camera) {

    return _fade_alpha;

}


#define ex_camera_get_flash_alpha

var _camera;

_camera = argument[0];

with(_camera) {

    return _flash_alpha;

}


#define ex_camera_get_tilt_angle

var _camera;

_camera = argument[0];

with(_camera) {
    
    return _tilt;
    
}


#define ex_camera_get_tracking_object

var _camera;

_camera = argument[0];

with(_camera) {
    
    return _view_object;
    
}


#define ex_camera_get_x

var _camera;

_camera = argument[0];

with(_camera) {
    
    return x;
    
}


#define ex_camera_get_y

var _camera;

_camera = argument[0];

with(_camera) {
    
    return y;
    
}


#define ex_camera_get_x_offset

var _camera;

_camera = argument[0];

with(_camera) {
    
    return _view_x_offset;
    
}

#define ex_camera_get_y_offset

var _camera;

_camera = argument[0];

with(_camera) {
    
    return _view_y_offset;
    
}

#define ex_camera_get_zoom_scale

var _camera;

_camera = argument[0];

with(_camera) {
    
    return _zoom;
    
}

#define ex_camera_is_scrolling

var _camera;

_camera = argument[0];

with(_camera) {
	return _fx_scroll;
}


#define ex_camera_is_fading

var _camera;

_camera = argument[0];

with(_camera) {
	return _fx_fade;
}


#define ex_camera_is_flashing

var _camera;

_camera = argument[0];

with(_camera) {
	return _fx_flash;
}


#define ex_camera_is_shaking

var _camera;

_camera = argument[0];

with(_camera) {
	return _fx_shake;
}


#define ex_camera_is_tilting

var _camera;

_camera = argument[0];

with(_camera) {
	return _fx_tilt;
}


#define ex_camera_is_zooming

var _camera;

_camera = argument[0];

with(_camera) {
	return _fx_zoom;
}


#define ex_camera_scroll_by

var _camera;

_camera = argument[0];

with(_camera) {

	_scroll_start_x = _view_x_offset;
    _scroll_start_y = _view_y_offset;
	
    _scroll_end_x = argument[1];
    _scroll_end_y = argument[2];

    if (sign(_scroll_end_x) == -1) {
        _scroll_end_x = (_scroll_start_x-abs(_scroll_end_x));
    } else {
        _scroll_end_x = (_scroll_start_x+abs(_scroll_end_x));
    }
    
    if (sign(_scroll_end_y) == -1) {
        _scroll_end_y = (_scroll_start_y-abs(_scroll_end_y));
    } else {
        _scroll_end_y = (_scroll_start_y+abs(_scroll_end_y));
    }
    
    _scroll_duration = abs(argument[3]);
    
    if (_scroll_duration == 0) {
        _scroll_duration = 1;
    }

    _scroll_time = 0;
    _fx_scroll = true;
    
}


#define ex_camera_scroll_to

var _camera;

_camera = argument[0];

with(_camera) {

	_scroll_start_x = _view_x_offset;
    _scroll_start_y = _view_y_offset;
	
    _scroll_end_x = argument[1];
    _scroll_end_y = argument[2];
	
    _scroll_duration = abs(argument[3]);
    
    if (_scroll_duration == 0) {
        _scroll_duration = 1;
    }

    _scroll_time = 0;
    _fx_scroll = true;
    
}


#define ex_camera_set_fade_alpha

var _camera;

_camera = argument[0];

with(_camera) {

    _fade_alpha = argument[1];

}


#define ex_camera_set_fade_blend

var _camera;

_camera = argument[0];

with(_camera) {

    _fade_blend = argument[1];

}


#define ex_camera_set_fade_color

var _camera;

_camera = argument[0];

with(_camera) {

    _fade_color = argument[1];

}


#define ex_camera_set_fade_draw_target

var _camera;

_camera = argument[0];

with(_camera) {

    _fade_draw_target = argument[1];

}


#define ex_camera_set_flash_blend

var _camera;

_camera = argument[0];

with(_camera) {

    _flash_blend = argument[1];

}


#define ex_camera_set_flash_color

var _camera;

_camera = argument[0];

with(_camera) {

    _flash_color = argument[1];

}


#define ex_camera_set_flash_draw_target

var _camera;

_camera = argument[0];

with(_camera) {

    _flash_draw_target = argument[1];

}


#define ex_camera_set_position

var _camera;

_camera = argument[0];

with(_camera) {
    
    if (instance_exists(_view_object)) {
  
        _view_object.x = argument[1];
        _view_object.y = argument[2];
        x = argument[1];
        y = argument[2];
      
    } else {

        x = argument[1];
        y = argument[2];
    
    }
    
}


#define ex_camera_set_scroll_offset

var _camera;

_camera = argument[0];

with(_camera) {
    
    _view_x_offset = argument[1];
	_view_y_offset = argument[2];
    
}



#define ex_camera_set_tilt_angle

var _camera;

_camera = argument[0];

with(_camera) {
    
    _tilt = argument[1];
    
}


#define ex_camera_set_tracking_object

var _camera;

_camera = argument[0];
_obj = argument[1];

if (instance_exists(_obj)) {

	with(_camera) {
			
			_view_object = argument[1];

	}
	return true;

} else {
	return false;
}



#define ex_camera_set_zoom_scale

var _camera;

_camera = argument[0];

with(_camera) {
    
    _zoom = argument[1];
    ex_camera_zoom(_camera, argument[1], 1);
    
}


#define ex_camera_shake

var _camera;

_camera = argument[0];

with(_camera) {
    
    _shake_time = 0;
    _shake_start_x = x;
    _shake_start_y = y;
    _shake_power_x = argument[1];
    _shake_power_y = argument[2];
    _shake_power_angle = argument[3];
    _shake_duration = argument[4];
    _fx_shake = true;
    
}

#define ex_camera_smoothstep

var p;
if (argument2 < argument0) return 0;
if (argument2 >= argument1) return 1;
if (argument0 == argument1) return -1;
p = (argument2 - argument0) / (argument1 - argument0);
return (p * p * (3 - 2 * p));


#define ex_camera_stop_fade

var _camera;

_camera = argument[0];

with(_camera) {

    _fx_fade = false;
    
}

#define ex_camera_stop_flash

var _camera;

_camera = argument[0];

with(_camera) {
    
    _flash_time = 0;
    _fx_flash = false;
    
}

#define ex_camera_stop_scroll

var _camera;

_camera = argument[0];

with(_camera) {
    
    _fx_scroll = false;
    
}

#define ex_camera_stop_shake

var _camera;

_camera = argument[0];

with(_camera) {
    
    _fx_shake = false;
    view_angle[_view] = _tilt;
    _shake_effect_x = 0;
    _shake_effect_y = 0;
    
}

#define ex_camera_stop_tilt

var _camera;

_camera = argument[0];

with(_camera) {
    
    _fx_tilt = false;
    
}

#define ex_camera_stop_zoom

var _camera;

_camera = argument[0];

with(_camera) {
    
    _fx_zoom = false;
    
}

#define ex_camera_tilt

var _camera;

_camera = argument[0];

with(_camera) {
    
    _tilt = view_angle[_view];
    _tilt_start = _tilt;
    _tilt_end = argument[1];
    _tilt_duration = argument[2];
    _tilt_time = 0;
    _fx_tilt = true;
    
}


#define ex_camera_zoom

var _camera;

_camera = argument[0];

with(_camera) {
    
    _zoom_end = argument[1];
    _zoom_duration = argument[2];
    _zoom_start = _zoom;
    _zoom_time = 0;
    _fx_zoom = true;
    
}


