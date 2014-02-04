#define tl_light_get_ambient

return global._T__L_0;

#define tl_light_get_color

return ds_list_find_value(argument0, 3);

#define tl_light_get_intensity
return ds_list_find_value(argument0, 4);

#define tl_light_get_smooth_angle
return ds_list_find_value(argument0, 5);

#define tl_light_get_x

var _T__L_1;_T__L_1=ds_list_find_value(argument0,0);
return ds_list_find_value(_T__L_1,1);

#define tl_light_get_y

var _T__L_1;_T__L_1=ds_list_find_value(argument0,0);
return ds_list_find_value(_T__L_1,2);

#define tl_light_get_rotation

var _T__L_1;_T__L_1=ds_list_find_value(argument0,0);
return ds_list_find_value(_T__L_1,0);

#define tl_light_get_xscale

var _T__L_1;_T__L_1=ds_list_find_value(argument0,0);
return ds_list_find_value(_T__L_1,4);

#define tl_light_get_yscale

var _T__L_1;_T__L_1=ds_list_find_value(argument0,0);
return ds_list_find_value(_T__L_1,5);

#define tl_light_get_sprite

return ds_list_find_value(argument0,1);

#define tl_light_get_active

return ds_list_find_value(argument0,10);

#define tl_light_get_image_index

return ds_list_find_value(argument0,2);

#define tl_light_active
ds_list_replace(argument0, 10, argument1);

#define tl_light_ambient

global._T__L_0=argument0;

#define tl_light_color

ds_list_replace(argument0,3,argument1);

#define tl_light_count

return ds_list_size(global._T__L_2);

#define tl_light_create


var _T__L_3,_T__L_4,_T__L_5,_T__L_6,_T__L_7;
 _T__L_3=ds_list_create();
if(argument4<=0){argument4=1;}
_T__L_4=ds_list_create();
_T__L_7=ds_list_create();
ds_list_add(_T__L_7,0);
ds_list_add(_T__L_7,sprite_get_xoffset(argument0));
ds_list_add(_T__L_7,sprite_get_yoffset(argument0));
ds_list_add(_T__L_7,0);
ds_list_add(_T__L_7,1);
ds_list_add(_T__L_7,1);
ds_list_add(_T__L_4,_T__L_7);

_T__L_5=sprite_get_width(argument0);
_T__L_6=sprite_get_height(argument0);
tl_mesh_point_add(_T__L_4,0,0);
tl_mesh_point_add(_T__L_4,_T__L_5,0);
tl_mesh_point_add(_T__L_4,_T__L_5,_T__L_6);
tl_mesh_point_add(_T__L_4,0,_T__L_6);
tl_mesh_move(_T__L_4,argument1,argument2);
ds_list_add(_T__L_3, _T__L_4);
ds_list_add(_T__L_3, argument0);
ds_list_add(_T__L_3, 0); 
ds_list_add(_T__L_3, argument3); 
ds_list_add(_T__L_3, 1); 
ds_list_add(_T__L_3, 5); 
ds_list_add(_T__L_3,0);
ds_list_add(_T__L_3,-1);
ds_list_add(_T__L_3,1);
ds_list_add(_T__L_3,median(0.01,argument4,1));
ds_list_add(_T__L_3,1);

ds_list_add(global._T__L_2, _T__L_3);
return _T__L_3;

#define tl_light_delete

var _T__L_3,_T__L_8,_T__L_9;
_T__L_3=ds_list_find_value(argument0,0);
_T__L_9=ds_list_find_value(argument0,7);
if(sprite_exists(_T__L_9)){sprite_delete(_T__L_9);}
for(_T__L_8=0;_T__L_8<ds_list_size(_T__L_3);_T__L_8+=1){
    ds_list_destroy(ds_list_find_value(_T__L_3,_T__L_8));
}
ds_list_destroy(_T__L_3);
ds_list_destroy(argument0);
ds_list_delete(global._T__L_2, ds_list_find_index(global._T__L_2, argument0));

#define tl_light_delete_all

var _T__L_8,_T__L_10,_T__L_3,_T__L_9,_T__L_11;
for(_T__L_8=0;_T__L_8<ds_list_size(global._T__L_2);_T__L_8+=1){
    _T__L_11=ds_list_find_value(global._T__L_2,_T__L_8);
    _T__L_3=ds_list_find_value(_T__L_11,0);
    _T__L_9=ds_list_find_value(_T__L_11,7);
    if(sprite_exists(_T__L_9)){sprite_delete(_T__L_9);}
    for(_T__L_10=0;_T__L_10<ds_list_size(_T__L_3);_T__L_10+=1){
        ds_list_destroy(ds_list_find_value(_T__L_3,_T__L_10));
    }
    ds_list_destroy(_T__L_3);
    ds_list_destroy(_T__L_11);
}
ds_list_clear(global._T__L_2);

#define tl_light_find

return ds_list_find_value(global._T__L_2,argument0);

#define tl_light_intensity
ds_list_replace(argument0, 4, argument1);

#define tl_light_move

tl_mesh_move(ds_list_find_value(argument0,0),argument1,argument2);

#define tl_light_quality
var _T__L_9;
ds_list_replace(argument0, 8, 1);
_T__L_9=ds_list_find_value(argument0, 7);
if(_T__L_9!=-1){
    if(sprite_exists(_T__L_9)){
        sprite_delete(_T__L_9);
        ds_list_replace(argument0, 7,-1);
    }
}
ds_list_replace(argument0,9,median(0.01,argument1,1));

#define tl_light_rotate

tl_mesh_rotate(ds_list_find_value(argument0,0),argument1);

#define tl_light_scale

tl_mesh_scale(ds_list_find_value(argument0,0),argument1,argument2);

#define tl_light_smooth_angle
ds_list_replace(argument0, 5, argument1);

#define tl_light_sprite

ds_list_replace(argument0, 1, argument1);
ds_list_replace(argument0, 2, argument2);

#define tl_light_static
ds_list_replace(argument0, 6, argument1);

#define tl_light_static_update
var _T__L_9;
ds_list_replace(argument0, 8, 1);
_T__L_9=ds_list_find_value(argument0, 7);
if(_T__L_9!=-1){
    if(sprite_exists(_T__L_9)){
        sprite_delete(_T__L_9);
        ds_list_replace(argument0, 7,-1);
    }
}

#define tl_light_static_update_position
var _T__L_8,_T__L_11,_T__L_12,_T__L_9;
for(_T__L_8=0;_T__L_8<ds_list_size(global._T__L_2);_T__L_8+=1){
    _T__L_11=ds_list_find_value(global._T__L_2,_T__L_8);
    _T__L_12=ds_list_find_value(_T__L_11,0);
    if(tl_mesh_point_inside(_T__L_12,argument0,argument1)){
        ds_list_replace(_T__L_11, 8, 1);
        _T__L_9=ds_list_find_value(_T__L_11, 7);
        if(_T__L_9!=-1){
            if(sprite_exists(_T__L_9))
            {
                sprite_delete(_T__L_9);
                ds_list_replace(argument0, 7,-1);
            }
        }
    }
}

#define tl_mesh_get_direction

return ds_list_find_value(ds_list_find_value(argument0,0),0);


#define tl_mesh_get_x

return ds_list_find_value(ds_list_find_value(argument0,0),1);


#define tl_mesh_get_y

return ds_list_find_value(ds_list_find_value(argument0,0),2);

#define tl_mesh_get_xscale
return ds_list_find_value(ds_list_find_value(argument0,0),4);

#define tl_mesh_get_yscale
return ds_list_find_value(ds_list_find_value(argument0,0),5);

#define tl_mesh_get_static
return ds_list_find_value(ds_list_find_value(argument0,0),7);

#define tl_mesh_get_vertex_count
return ds_list_size(argument0)-1;

#define tl_mesh_create

var _T__L_3,_T__L_7;
_T__L_7=ds_list_create();
_T__L_3=ds_list_create();
ds_list_add(_T__L_3,0);
ds_list_add(_T__L_3,argument0);
ds_list_add(_T__L_3,argument1);
ds_list_add(_T__L_3,0);
ds_list_add(_T__L_3,1);
ds_list_add(_T__L_3,1);
ds_list_add(_T__L_3,1);
ds_list_add(_T__L_3,0);
ds_list_add(_T__L_3,0);
ds_list_add(_T__L_7,_T__L_3);
ds_list_add(global._T__L_13,_T__L_7);
return _T__L_7;

#define tl_mesh_create_circle
var _T__L_1,_T__L_8;
if(!argument2){
    _T__L_1=tl_mesh_create(0,0);
}
else{
    _T__L_1=tl_mesh_create_static(0,0);    
}
if(argument1==0){return _T__L_1;}
for(_T__L_8=360;_T__L_8>=0;_T__L_8-=360/argument1){
    tl_mesh_point_add(_T__L_1,lengthdir_x(argument0,_T__L_8),lengthdir_y(argument0,_T__L_8));
}
return _T__L_1;

#define tl_mesh_create_from_sprite

var _T__L_4;
if(argument1==false){
    _T__L_4=tl_mesh_create(sprite_get_xoffset(argument0),sprite_get_yoffset(argument0));
}
else{
    _T__L_4=tl_mesh_create_static(sprite_get_xoffset(argument0),sprite_get_yoffset(argument0));
}
_T__L_5=sprite_get_width(argument0);
_T__L_6=sprite_get_height(argument0);

tl_mesh_point_add(_T__L_4,0,0);
tl_mesh_point_add(_T__L_4,_T__L_5,0);
tl_mesh_point_add(_T__L_4,_T__L_5,_T__L_6);
tl_mesh_point_add(_T__L_4,0,_T__L_6);
tl_mesh_point_add(_T__L_4,0,0);


return _T__L_4;


#define tl_mesh_create_static

var _T__L_3,_T__L_7;
_T__L_7=ds_list_create();
_T__L_3=ds_list_create();
ds_list_add(_T__L_3,0);
ds_list_add(_T__L_3,argument0);
ds_list_add(_T__L_3,argument1);
ds_list_add(_T__L_3,0);
ds_list_add(_T__L_3,1);
ds_list_add(_T__L_3,1);
ds_list_add(_T__L_3,1);
ds_list_add(_T__L_3,1);
ds_list_add(_T__L_3,0);
ds_list_add(_T__L_7,_T__L_3);
ds_list_add(global._T__L_14,_T__L_7);
return _T__L_7;

#define tl_mesh_destroy

var _T__L_8,_T__L_15;
_T__L_15=ds_list_find_value(ds_list_find_value(argument0,0),7);
for(_T__L_8=0;_T__L_8<ds_list_size(argument0);_T__L_8+=1){
    ds_list_destroy(ds_list_find_value(argument0,_T__L_8));
}
ds_list_destroy(argument0);
if(_T__L_15){
    ds_list_delete(global._T__L_14,ds_list_find_index(global._T__L_14,argument0));
}
else{
    ds_list_delete(global._T__L_13,ds_list_find_index(global._T__L_13,argument0));
}
return 0;
#define tl_mesh_destroy_all

var _T__L_8,_T__L_12,_T__L_10;
for(_T__L_8=0;_T__L_8<ds_list_size(global._T__L_13);_T__L_8+=1){
    _T__L_12=ds_list_find_value(global._T__L_13,_T__L_8);
    for(_T__L_10=0;_T__L_10<ds_list_size(_T__L_12);_T__L_10+=1){
        ds_list_destroy(ds_list_find_value(_T__L_12,_T__L_10));
    }
    ds_list_destroy(_T__L_12);
}
for(_T__L_8=0;_T__L_8<ds_list_size(global._T__L_14);_T__L_8+=1){
    _T__L_12=ds_list_find_value(global._T__L_14,_T__L_8);
    for(_T__L_10=0;_T__L_10<ds_list_size(_T__L_12);_T__L_10+=1){
        ds_list_destroy(ds_list_find_value(_T__L_12,_T__L_10));
    }
    ds_list_destroy(_T__L_12);
}

ds_list_clear(global._T__L_13);
ds_list_clear(global._T__L_14);
ds_list_clear(global._T__L_16);
ds_list_clear(global._T__L_17);
#define tl_mesh_draw

var _T__L_18,_T__L_19,_T__L_8,_T__L_20,_T__L_21,_T__L_22,_T__L_23,_T__L_24,_T__L_25;
_T__L_25=ds_list_size(argument0);
draw_primitive_begin(pr_linestrip);
for(_T__L_8=1;_T__L_8<_T__L_25;_T__L_8+=1)
{

    _T__L_26=ds_list_find_value(argument0,_T__L_8);
    _T__L_18=ds_list_find_value(_T__L_26,0);
    _T__L_19=ds_list_find_value(_T__L_26,1);
    draw_vertex(_T__L_18,_T__L_19);
}
_T__L_26=ds_list_find_value(argument0,1);
_T__L_18=ds_list_find_value(_T__L_26,0);
_T__L_19=ds_list_find_value(_T__L_26,1);
draw_vertex(_T__L_18,_T__L_19);
draw_primitive_end();
draw_circle(tl_mesh_get_x(argument0),tl_mesh_get_y(argument0),3,1);


#define tl_mesh_hybrid

var _T__L_27,_T__L_28,_T__L_15;
_T__L_27=ds_list_find_value(argument0,0);
_T__L_15=ds_list_find_value(_T__L_27,7);
if(instance_exists(argument1)){
    ds_list_replace(_T__L_27,8,true);
    argument1._T__L_29=0.2;
    if(_T__L_15){
      _T__L_28=ds_list_find_index(global._T__L_17,argument1);
      if(_T__L_28==-1){
        ds_list_add(global._T__L_17,argument1);
      }
      else{
        ds_list_replace(global._T__L_17,_T__L_28,argument1);
      }
    }
    else{
      _T__L_28=ds_list_find_index(global._T__L_16,argument1);
      if(_T__L_28==-1){
        ds_list_add(global._T__L_16,argument1);
      }
      else{
        ds_list_replace(global._T__L_16,_T__L_28,argument1);
      }
    }
}
else{
    if(_T__L_15){
      _T__L_28=ds_list_find_index(global._T__L_17,argument1)
      if(_T__L_28!=-1){
        ds_list_delete(global._T__L_17,_T__L_28);
      } 
    }
    else{
      _T__L_28=ds_list_find_index(global._T__L_16,argument1)
      if(_T__L_28!=-1){
        ds_list_delete(global._T__L_16,_T__L_28);
      } 
    }
    ds_list_replace(_T__L_27,8,false);
}
return 1;
#define tl_mesh_move

var _T__L_18,_T__L_19,_T__L_30,_T__L_31,_T__L_27;
_T__L_27=ds_list_find_value(argument0,0);
_T__L_30=ds_list_find_value(_T__L_27,1);
_T__L_31=ds_list_find_value(_T__L_27,2);
for(_T__L_8=1;_T__L_8<ds_list_size(argument0);_T__L_8+=1){
    _T__L_18=ds_list_find_value(ds_list_find_value(argument0,_T__L_8),0);
    _T__L_19=ds_list_find_value(ds_list_find_value(argument0,_T__L_8),1);
    ds_list_replace(ds_list_find_value(argument0,_T__L_8),0,_T__L_18+argument1-_T__L_30);
    ds_list_replace(ds_list_find_value(argument0,_T__L_8),1,_T__L_19+argument2-_T__L_31);
}
ds_list_replace(_T__L_27,1,argument1);
ds_list_replace(_T__L_27,2,argument2);
return 1;

#define tl_mesh_point_add

var _T__L_32,_T__L_1,_T__L_30,_T__L_31;
_T__L_1=0;
_T__L_32=ds_list_create();
ds_list_add(_T__L_32,argument1);
ds_list_add(_T__L_32,argument2);
ds_list_add(argument0,_T__L_32);
_T__L_30=ds_list_find_value(ds_list_find_value(argument0,0),1);
_T__L_31=ds_list_find_value(ds_list_find_value(argument0,0),2);
for(_T__L_8=1;_T__L_8<ds_list_size(argument0);_T__L_8+=1){
    _T__L_3=ds_list_find_value(argument0,_T__L_8);
    _T__L_18=ds_list_find_value(_T__L_3,0);
    _T__L_19=ds_list_find_value(_T__L_3,1);
    _T__L_33=point_distance(_T__L_30,_T__L_31,_T__L_18,_T__L_19);
    if (_T__L_33>_T__L_1){_T__L_1=_T__L_33;}
}
ds_list_replace(ds_list_find_value(argument0,0),3,_T__L_1);
global._T__L_34+=1;
return 1;


#define tl_mesh_point_delete

if (argument1>0)
{
    ds_list_destroy(ds_list_find_value(argument0,argument1));
    ds_list_delete(argument0,argument1);
    global._T__L_34-=1;
    return 1;
}
else{return 0;}

#define tl_mesh_point_inside

var _T__L_8, _T__L_35, _T__L_36,_T__L_37,_T__L_38,_T__L_18,_T__L_19,_T__L_26,_T__L_39,_T__L_40,_T__L_41;
_T__L_37=argument1;
_T__L_38=argument2;
_T__L_36 = 0;
_T__L_35 = ds_list_size(argument0)- 1;
for (_T__L_8 = 1;  _T__L_8 < ds_list_size(argument0);  _T__L_8+=1){
    _T__L_26=ds_list_find_value(argument0,_T__L_8);
    _T__L_18=ds_list_find_value(_T__L_26,0);
    _T__L_19=ds_list_find_value(_T__L_26,1);
    _T__L_39=ds_list_find_value(argument0,_T__L_35);
    _T__L_40=ds_list_find_value(_T__L_39,0);
    _T__L_41=ds_list_find_value(_T__L_39,1);
    if((_T__L_41 - _T__L_19)!=0)
    if (((_T__L_19 > _T__L_38) != (_T__L_41 > _T__L_38)) && (_T__L_37 < (_T__L_40 - _T__L_18) * (_T__L_38 - _T__L_19) / (_T__L_41 - _T__L_19) + _T__L_18)){
        _T__L_36 = !_T__L_36;
    }
    _T__L_35=_T__L_8;
}
return _T__L_36;


#define tl_mesh_rotate2

var _T__L_42,_T__L_27,_T__L_43;
_T__L_27=ds_list_find_value(argument0,0);
_T__L_43=ds_list_find_value(_T__L_27,0);

_T__L_42 = abs(((((argument1 - _T__L_43) mod 360) + 540) mod 360) - 180);
if(_T__L_42>0){
    var _T__L_18,_T__L_19,_T__L_36,_T__L_9,_T__L_8,_T__L_25,_T__L_30,_T__L_31;
    _T__L_25=ds_list_size(argument0);
    _T__L_30=ds_list_find_value(_T__L_27,1);
    _T__L_31=ds_list_find_value(_T__L_27,2);
    _T__L_36 = cos(_T__L_42* pi / 180);
    _T__L_9 = sin(_T__L_42* pi / 180);
    for(_T__L_8=1;_T__L_8<_T__L_25;_T__L_8+=1){
        _T__L_26=ds_list_find_value(argument0,_T__L_8);
        _T__L_18=ds_list_find_value(_T__L_26,0)-_T__L_30;
        _T__L_19=ds_list_find_value(_T__L_26,1)-_T__L_31;
        ds_list_replace(_T__L_26,0,(_T__L_18 * _T__L_36) - (_T__L_19 * _T__L_9)+_T__L_30);
        ds_list_replace(_T__L_26,1,(_T__L_18 * _T__L_9) + (_T__L_19 * _T__L_36)+_T__L_31);
    }
    ds_list_replace(_T__L_27, 0, _T__L_43);
}
#define tl_mesh_rotate

var _T__L_18,_T__L_19,_T__L_44,_T__L_45,_T__L_25,_T__L_46,_T__L_33,_T__L_30,_T__L_31,_T__L_27,_T__L_26,_T__L_43,_T__L_47;
_T__L_25=ds_list_size(argument0);
_T__L_27=ds_list_find_value(argument0,0);
_T__L_30=ds_list_find_value(_T__L_27,1);
_T__L_31=ds_list_find_value(_T__L_27,2);
_T__L_43=argument1 mod 360;
_T__L_47=argument1-ds_list_find_value(_T__L_27,0);
for(_T__L_8=1;_T__L_8<_T__L_25;_T__L_8+=1){
    _T__L_26=ds_list_find_value(argument0,_T__L_8);
    _T__L_18=ds_list_find_value(_T__L_26,0);
    _T__L_19=ds_list_find_value(_T__L_26,1);
    _T__L_33=point_distance(_T__L_30,_T__L_31,_T__L_18,_T__L_19);
    _T__L_46=point_direction(_T__L_30,_T__L_31,_T__L_18,_T__L_19);
    _T__L_44=_T__L_30+_T__L_33*cos(degtorad(_T__L_46+_T__L_47));
    _T__L_45=_T__L_31-_T__L_33*sin(degtorad(_T__L_46+_T__L_47));
    ds_list_replace(_T__L_26,0,_T__L_44);
    ds_list_replace(_T__L_26,1,_T__L_45);
}
ds_list_replace(_T__L_27,0,_T__L_43);

#define tl_mesh_scale

if( argument1 == 0 || argument2 == 0) return 0;

var _T__L_18,_T__L_19,_T__L_25,_T__L_46,_T__L_33,_T__L_30,_T__L_31,_T__L_27,_T__L_26,_T__L_43,_T__L_1,_T__L_48,_T__L_49;
_T__L_25=ds_list_size(argument0);
_T__L_27=ds_list_find_value(argument0,0);
_T__L_43=ds_list_find_value(_T__L_27,0);
_T__L_30=ds_list_find_value(_T__L_27,1);
_T__L_31=ds_list_find_value(_T__L_27,2);
_T__L_50=ds_list_find_value(_T__L_27,4);
_T__L_51=ds_list_find_value(_T__L_27,5);
_T__L_48 = argument1/_T__L_50;
_T__L_49 = argument2/_T__L_51;
_T__L_1 = 0;
tl_mesh_rotate(argument0,0);
for( _T__L_8 = 1; _T__L_8 < _T__L_25; _T__L_8 += 1) {
    _T__L_26=ds_list_find_value(argument0,_T__L_8);
    _T__L_18= _T__L_30+ (ds_list_find_value(_T__L_26,0)-_T__L_30) *_T__L_48
    _T__L_19= _T__L_31+ (ds_list_find_value(_T__L_26,1)-_T__L_31) *_T__L_49
    ds_list_replace(_T__L_26,0,_T__L_18);
    ds_list_replace(_T__L_26,1,_T__L_19);
    _T__L_33 = point_distance(_T__L_30, _T__L_31, _T__L_18,_T__L_19);
		  if(_T__L_33 > _T__L_1) 	_T__L_1 = _T__L_33;
}
	
tl_mesh_rotate(argument0,_T__L_43);
ds_list_replace(_T__L_27,3,_T__L_1);
ds_list_replace(_T__L_27,4,argument1);
ds_list_replace(_T__L_27,5,argument2);


#define scale2

var _T__L_18,_T__L_19,_T__L_44,_T__L_45,_T__L_25,_T__L_46,_T__L_33,_T__L_30,_T__L_31,_T__L_27,_T__L_26,_T__L_43;
_T__L_25=ds_list_size(argument0);
_T__L_27=ds_list_find_value(argument0,0);
_T__L_30=ds_list_find_value(_T__L_27,1);
_T__L_31=ds_list_find_value(_T__L_27,2);
_T__L_50=ds_list_find_value(_T__L_27,4);
_T__L_51=ds_list_find_value(_T__L_27,5);
_T__L_43=ds_list_find_value(_T__L_27,0);
tl_mesh_rotate(argument0,0);
var _T__L_1;_T__L_1=0;
for(_T__L_8=1;_T__L_8<_T__L_25;_T__L_8+=1){
    _T__L_26=ds_list_find_value(argument0,_T__L_8);
    _T__L_18=ds_list_find_value(_T__L_26,0);
    _T__L_19=ds_list_find_value(_T__L_26,1);
    _T__L_33=point_distance(_T__L_30,_T__L_31,_T__L_18,_T__L_19);
    _T__L_46=point_direction(_T__L_30,_T__L_31,_T__L_18,_T__L_19);
    _T__L_44=_T__L_30+lengthdir_x(_T__L_33/_T__L_50*argument1,_T__L_46);
    _T__L_45=_T__L_31+lengthdir_y(_T__L_33/_T__L_51*argument2,_T__L_46);
    ds_list_replace(_T__L_26,0,_T__L_44);
    ds_list_replace(_T__L_26,1,_T__L_45);
    _T__L_33=point_distance(_T__L_30,_T__L_31,_T__L_44,_T__L_45);
    if (_T__L_33>_T__L_1){_T__L_1=_T__L_33;}
}
tl_mesh_rotate(argument0,_T__L_43);
ds_list_replace(_T__L_27,3,_T__L_1);
ds_list_replace(_T__L_27,4,argument1);
ds_list_replace(_T__L_27,5,argument2);


#define tl_mesh_smooth
ds_list_replace(ds_list_find_value(argument0,0),6,argument1);

#define tl_mesh_xorigin

var _T__L_30,_T__L_31,_T__L_1,_T__L_8,_T__L_18,_T__L_19,_T__L_33;
_T__L_1=0;
ds_list_replace(ds_list_find_value(argument0,0),1,argument1);
_T__L_30=argument1;
_T__L_31=ds_list_find_value(ds_list_find_value(argument0,0),2);
for(_T__L_8=1;_T__L_8<ds_list_size(argument0);_T__L_8+=1){
    _T__L_3=ds_list_find_value(argument0,_T__L_8);
    _T__L_18=ds_list_find_value(_T__L_3,0);
    _T__L_19=ds_list_find_value(_T__L_3,1);
    _T__L_33=point_distance(_T__L_30,_T__L_31,_T__L_18,_T__L_19);
    if (_T__L_33>_T__L_1){_T__L_1=_T__L_33;}
}
ds_list_replace(ds_list_find_value(argument0,0),3,_T__L_1);


#define tl_mesh_yorigin

var _T__L_30,_T__L_31,_T__L_1,_T__L_8,_T__L_18,_T__L_19,_T__L_33;
_T__L_1=0;
ds_list_replace(ds_list_find_value(argument0,0),2,argument1);
_T__L_30=ds_list_find_value(ds_list_find_value(argument0,0),1);
_T__L_31=argument1;
for(_T__L_8=1;_T__L_8<ds_list_size(argument0);_T__L_8+=1){
    _T__L_3=ds_list_find_value(argument0,_T__L_8);
    _T__L_18=ds_list_find_value(_T__L_3,0);
    _T__L_19=ds_list_find_value(_T__L_3,1);
    _T__L_33=point_distance(_T__L_30,_T__L_31,_T__L_18,_T__L_19);
    if (_T__L_33>_T__L_1){_T__L_1=_T__L_33;}
}
ds_list_replace(ds_list_find_value(argument0,0),3,_T__L_1);


#define tl_shadowsprite
var _T__L_32;
ds_list_add(global._T__L_52,argument0);
argument0._T__L_29=0.2;
argument0._T__L_53=0;

#define tl_shadowsprite_destroy
if(argument0._T__L_53){
    ds_list_delete(global._T__L_54,ds_list_find_index(global._T__L_54,argument0));
}
else{
    ds_list_delete(global._T__L_55,ds_list_find_index(global._T__L_55,argument0));
}

#define tl_shadowsprite_intensity
argument0._T__L_29=argument1;

#define tl_shadowsprite_static
var _T__L_32;
ds_list_add(global._T__L_56,argument0);
argument0._T__L_29=1;
argument0._T__L_53=1;

#define tl_draw
var _T__L_36,_T__L_8;
_T__L_36=draw_get_color();
if(!surface_exists(global._T__L_57)){
    global._T__L_57 = surface_create(view_wview[global._T__L_58]*global._T__L_59, view_hview[global._T__L_58]);
    if (!surface_exists(global._T__L_57)){
        show_message("Impossible to recreate surface") 
        return 1;
    }      
}
draw_set_color(c_white);
draw_set_blend_mode_ext(bm_zero,bm_src_color);
draw_surface_stretched(global._T__L_57,view_xview[global._T__L_58],view_yview[global._T__L_58],view_wview[global._T__L_58],view_hview[global._T__L_58]);
draw_set_blend_mode(bm_normal);
if(global._T__L_60){
    if(global._T__L_61<255){
        global._T__L_61+=1;
    }
    else{global._T__L_61=0;}    
    draw_set_color(make_color_rgb(global._T__L_61,global._T__L_61,global._T__L_61));
    var _T__L_11,_T__L_8,_T__L_12;
    for(_T__L_8=0;_T__L_8<ds_list_size(global._T__L_2);_T__L_8+=1){
        _T__L_11=ds_list_find_value(global._T__L_2,_T__L_8);
        tl_mesh_draw(ds_list_find_value(_T__L_11,0));
    }
    for(_T__L_8=0;_T__L_8<ds_list_size(global._T__L_13);_T__L_8+=1){
        _T__L_12=ds_list_find_value(global._T__L_13,_T__L_8);
        tl_mesh_draw(_T__L_12);
    }
    for(_T__L_8=0;_T__L_8<ds_list_size(global._T__L_14);_T__L_8+=1){
        _T__L_12=ds_list_find_value(global._T__L_14,_T__L_8);
        tl_mesh_draw(_T__L_12);
    }
}
draw_set_color(_T__L_36);
return 0;
#define tl_draw_debug
global._T__L_60=argument0;

#define tl_free
surface_free(global._T__L_57);
tl_light_delete_all();
tl_mesh_destroy_all();
ds_list_destroy(global._T__L_2);
ds_list_destroy(global._T__L_13);
ds_list_destroy(global._T__L_52);
ds_list_destroy(global._T__L_14);
ds_list_destroy(global._T__L_56);


#define tl_get_lighting
return color_get_value(surface_getpixel(global._T__L_57,round((argument0-view_xview[0])*global._T__L_59),round((argument1-view_yview[0])*global._T__L_59)))/255;

#define tl_get_surface
return global._T__L_57;

#define tl_get_vertex_count
return global._T__L_34;

#define tl_init
global._T__L_2 = ds_list_create();
global._T__L_13 = ds_list_create();
global._T__L_14 = ds_list_create();
global._T__L_16=ds_list_create();
global._T__L_17=ds_list_create();
global._T__L_52=ds_list_create();
global._T__L_56=ds_list_create();
global._T__L_0 = $333333;
global._T__L_59=median(0.01,argument2,1);
var _T__L_62,_T__L_63;
_T__L_62=max(1,argument3);
_T__L_63=max(1,argument4);
global._T__L_57 = surface_create(_T__L_62*global._T__L_59, _T__L_63*global._T__L_59);
global._T__L_64=argument0;
global._T__L_65=argument1;
global._T__L_60=false;
global._T__L_61=0;
global._T__L_58=0;
global._T__L_34=0;

if(surface_exists(global._T__L_57)) return 1;
else return 0;




#define tl_area_size
surface_free(global._T__L_57);
var _T__L_62,_T__L_63;
_T__L_62=max(1,argument0);
_T__L_63=max(1,argument1);
global._T__L_57 = surface_create(_T__L_62*global._T__L_59, _T__L_63*global._T__L_59);
if(surface_exists(global._T__L_57))return 1;
else return 0;

#define tl_update
var _T__L_66,_T__L_67,_T__L_68,_T__L_69, _T__L_70,_T__L_71,_T__L_72,_T__L_73,_T__L_11, _T__L_12,
_T__L_74,_T__L_75, _T__L_37,_T__L_38,_T__L_76,_T__L_77,_T__L_78,_T__L_79,_T__L_80,_T__L_81
_T__L_8,_T__L_10,_T__L_82, _T__L_83,_T__L_43,_T__L_84,_T__L_37,_T__L_38,_T__L_85,_T__L_79,_T__L_86,_T__L_87,
_T__L_88,_T__L_89,_T__L_90,_T__L_91,_T__L_92,_T__L_93,_T__L_94,_T__L_95,_T__L_96,_T__L_97,_T__L_98,_T__L_99,_T__L_100,_T__L_101,
_T__L_102,_T__L_103,_T__L_104,_T__L_105,_T__L_106,_T__L_107,_T__L_108,_T__L_109,_T__L_36,_T__L_110,_T__L_111,_T__L_112,_T__L_113,_T__L_114,
_T__L_115,_T__L_116,_T__L_117,_T__L_118,_T__L_119,_T__L_120,_T__L_121,_T__L_122,_T__L_123,_T__L_124,_T__L_125,_T__L_126,_T__L_127;
_T__L_66=view_xview[global._T__L_58];
_T__L_67=view_yview[global._T__L_58];
_T__L_68=view_wview[global._T__L_58]+_T__L_66;
_T__L_69=view_hview[global._T__L_58]+_T__L_67;
texture_set_interpolation(true);
texture_set_repeat(true);

_T__L_36=draw_get_color();
if (!surface_exists(global._T__L_57)) {
    global._T__L_57 = surface_create(view_wview[global._T__L_58]*global._T__L_59, view_hview[global._T__L_58]);
    if (!surface_exists(global._T__L_57)){
       return 0;
    }      
}
_T__L_110=global._T__L_59;
draw_set_color(c_black);
surface_set_target(global._T__L_57);
draw_rectangle_color(0,0,10000,10000,global._T__L_0,global._T__L_0,global._T__L_0,global._T__L_0,0);
surface_reset_target();
_T__L_8=0;
repeat(ds_list_size(global._T__L_2)){
    _T__L_11=ds_list_find_value(global._T__L_2,_T__L_8);
    _T__L_117=ds_list_find_value(_T__L_11,10);
    if(_T__L_117){
    
    _T__L_128=ds_list_find_value(_T__L_11,0);
    _T__L_84=ds_list_find_value(_T__L_128,0);
    _T__L_43=ds_list_find_value(_T__L_84,0);
    _T__L_37=ds_list_find_value(_T__L_84,1);
    _T__L_38=ds_list_find_value(_T__L_84,2);
    _T__L_76=ds_list_find_value(_T__L_84,4);
    _T__L_77=ds_list_find_value(_T__L_84,5);
    _T__L_86=ds_list_find_value(_T__L_84,3)*max(_T__L_76,_T__L_77);
    
    _T__L_79=ds_list_find_value(_T__L_11,1);
    _T__L_81=ds_list_find_value(_T__L_11,2);
    _T__L_129=ds_list_find_value(_T__L_11,3);
    _T__L_130=ds_list_find_value(_T__L_11,4);
    _T__L_131=ds_list_find_value(_T__L_11,5);
    _T__L_132=ds_list_find_value(_T__L_11,6);
    _T__L_133=ds_list_find_value(_T__L_11,7);
    _T__L_134=ds_list_find_value(_T__L_11,8);
    _T__L_111=ds_list_find_value(_T__L_11,9);
    var _T__L_135;
    _T__L_135=_T__L_110*_T__L_111;
    var _T__L_88,_T__L_89,_T__L_90,_T__L_91,_T__L_92,_T__L_93,_T__L_94,_T__L_95;
    _T__L_85=ds_list_find_value(_T__L_128,1);
    _T__L_88=ds_list_find_value(_T__L_85,0);
    _T__L_89=ds_list_find_value(_T__L_85,1);
    _T__L_85=ds_list_find_value(_T__L_128,2);
    _T__L_90=ds_list_find_value(_T__L_85,0);
    _T__L_91=ds_list_find_value(_T__L_85,1);
    _T__L_85=ds_list_find_value(_T__L_128,3);
    _T__L_92=ds_list_find_value(_T__L_85,0);
    _T__L_93=ds_list_find_value(_T__L_85,1);
    _T__L_85=ds_list_find_value(_T__L_128,4);
    _T__L_94=ds_list_find_value(_T__L_85,0);
    _T__L_95=ds_list_find_value(_T__L_85,1);
     
    _T__L_70=min(_T__L_88,_T__L_90,_T__L_92,_T__L_94);
    _T__L_71=min(_T__L_89,_T__L_91,_T__L_93,_T__L_95);
    _T__L_72=max(_T__L_88,_T__L_90,_T__L_92,_T__L_94);
    _T__L_73=max(_T__L_89,_T__L_91,_T__L_93,_T__L_95);
  
  var _T__L_136,_T__L_137;
    _T__L_136=ceil((_T__L_72-_T__L_70));
    _T__L_137=ceil((_T__L_73-_T__L_71));
    
    if(!_T__L_134 || !_T__L_132){
        _T__L_122=median(_T__L_70,_T__L_66,_T__L_68);
        _T__L_123=median(_T__L_72,_T__L_66,_T__L_68);
        _T__L_124=median(_T__L_71,_T__L_67,_T__L_69);
        _T__L_125=median(_T__L_73,_T__L_67,_T__L_69);
        _T__L_121=((_T__L_123-_T__L_122)>1 && (_T__L_125-_T__L_124)>1);
    }   
    else{_T__L_121=true;}
    
    
    
    
    if (_T__L_121){    
            _T__L_112=surface_create(max(1,ceil(_T__L_136*_T__L_135)),max(1,ceil(_T__L_137*_T__L_135)));
            _T__L_115=surface_create(max(1,ceil(_T__L_136*_T__L_135)),max(1,ceil(_T__L_137*_T__L_135)));
            
            if (!surface_exists(_T__L_112)) {
                _T__L_112 = surface_create(_T__L_136*_T__L_135,_T__L_137*_T__L_135);
                if (!surface_exists(_T__L_112)){
                    draw_set_color(_T__L_36);
                    return 0;
                }      
            } 
            if (!surface_exists(_T__L_115)) {
                _T__L_115 = surface_create(_T__L_136*_T__L_135,_T__L_137*_T__L_135);
                if (!surface_exists(_T__L_115)){
                    draw_set_color(_T__L_36);
                    return 0;
                }      
            } 
            
            
            surface_set_target(_T__L_115);
            draw_rectangle_color(0,0,_T__L_136*_T__L_135,_T__L_137*_T__L_135,c_white,c_white,c_white,c_white,0);
            _T__L_116=false;
            
            
            if(!_T__L_132 || !_T__L_134){
              _T__L_106=0;
              var _T__L_107;
              repeat(ds_list_size(global._T__L_52)){
                _T__L_107=ds_list_find_value(global._T__L_52,_T__L_106);
                if(instance_exists(_T__L_107)){
                    _T__L_138=point_distance(_T__L_37,_T__L_38,_T__L_107.x,_T__L_107.y);
                    if(_T__L_138<_T__L_86+max(sprite_get_width(_T__L_107.sprite_index)*_T__L_107.image_xscale,sprite_get_height(_T__L_107.sprite_index)*_T__L_107.image_yscale)){
                        draw_sprite_ext(_T__L_107.sprite_index,_T__L_107.image_index,(_T__L_107.x-_T__L_70)*_T__L_135,(_T__L_107.y-_T__L_71)*_T__L_135,_T__L_135*_T__L_107.image_xscale,_T__L_135*_T__L_107.image_yscale,_T__L_107.image_angle,c_black,_T__L_107._T__L_29);
                        _T__L_116=true;
                    }   
                }
                _T__L_106+=1;             
              } 
            }
            
            if(_T__L_134){
              _T__L_106=0;
              var _T__L_107;
                repeat(ds_list_size(global._T__L_56)){
                _T__L_107=ds_list_find_value(global._T__L_56,_T__L_106);
                if(instance_exists(_T__L_107)){
                    _T__L_138=point_distance(_T__L_37,_T__L_38,_T__L_107.x,_T__L_107.y);
                    if(_T__L_138<_T__L_86+max(sprite_get_width(_T__L_107.sprite_index)*_T__L_107.image_xscale,sprite_get_height(_T__L_107.sprite_index)*_T__L_107.image_yscale)){
                        draw_sprite_ext(_T__L_107.sprite_index,_T__L_107.image_index,(_T__L_107.x-_T__L_70)*_T__L_135,(_T__L_107.y-_T__L_71)*_T__L_135,_T__L_135*_T__L_107.image_xscale,_T__L_135*_T__L_107.image_yscale,_T__L_107.image_angle,c_black,_T__L_107._T__L_29);
                        _T__L_116=true;    
                    }   
                }
                _T__L_106+=1;             
                }
            }
            surface_reset_target(); 
            
            if(_T__L_116){
                
                if(!_T__L_132 || !_T__L_134){
                 if(ds_list_size(global._T__L_16)>0){
                  _T__L_106=0;
                  surface_set_target(_T__L_115);
              var _T__L_107;
                  repeat(ds_list_size(global._T__L_16)){
                    _T__L_107=ds_list_find_value(global._T__L_16,_T__L_106);
                    if(instance_exists(_T__L_107)){
                        _T__L_138=point_distance(_T__L_37,_T__L_38,_T__L_107.x,_T__L_107.y);
                        if(_T__L_138<_T__L_86+max(sprite_get_width(_T__L_107.sprite_index)*_T__L_107.image_xscale,sprite_get_height(_T__L_107.sprite_index)*_T__L_107.image_yscale)){
                            draw_sprite_ext(_T__L_107.sprite_index,_T__L_107.image_index,(_T__L_107.x-_T__L_70)*_T__L_135,(_T__L_107.y-_T__L_71)*_T__L_135,_T__L_135*_T__L_107.image_xscale,_T__L_135*_T__L_107.image_yscale,_T__L_107.image_angle,c_black,_T__L_107._T__L_29);
                        }
                    }
                    _T__L_106+=1;             
                    }
                   surface_reset_target();
                 }
                }
                
                if(_T__L_134){
                 if(ds_list_size(global._T__L_17)>0){
                  _T__L_106=0;
              var _T__L_107;
                  surface_set_target(_T__L_115);
                  repeat(ds_list_size(global._T__L_17)){
                    _T__L_107=ds_list_find_value(global._T__L_17,_T__L_106);
                    if(instance_exists(_T__L_107)){
                        _T__L_138=point_distance(_T__L_37,_T__L_38,_T__L_107.x,_T__L_107.y);
                        if(_T__L_138<_T__L_86+max(sprite_get_width(_T__L_107.sprite_index)*_T__L_107.image_xscale,sprite_get_height(_T__L_107.sprite_index)*_T__L_107.image_yscale)){
                            draw_sprite_ext(_T__L_107.sprite_index,_T__L_107.image_index,(_T__L_107.x-_T__L_70)*_T__L_135,(_T__L_107.y-_T__L_71)*_T__L_135,_T__L_135*_T__L_107.image_xscale,_T__L_135*_T__L_107.image_yscale,_T__L_107.image_angle,c_black,_T__L_107._T__L_29);
                        }
                    }
                    _T__L_106+=1;             
                  }
                   surface_reset_target();
                 }
                }
                
                
                _T__L_113 = 1;
                _T__L_114 = 0; 
                _T__L_139=(_T__L_37-_T__L_70)*_T__L_135;
                _T__L_140=(_T__L_38-_T__L_71)*_T__L_135;
                repeat(3){
                    surface_set_target(_T__L_112);
                    draw_set_blend_mode(bm_normal);
                    draw_rectangle_color(0,0,10000,10000,c_white,c_white,c_white,c_white,0);
                    draw_set_blend_mode_ext(bm_dest_color,bm_zero);
                    _T__L_114 = power(1.03,_T__L_113);
                    draw_surface(_T__L_115,0,0);
                    draw_surface_ext(_T__L_115,_T__L_139-_T__L_139*_T__L_114,_T__L_140-_T__L_140*_T__L_114,_T__L_114,_T__L_114,0,c_white,1);
                    _T__L_113 *= 2;
                    surface_reset_target(); 
                
                    surface_set_target(_T__L_115);
                    draw_set_blend_mode(bm_normal);
                    draw_rectangle_color(0,0,10000,10000,c_white,c_white,c_white,c_white,0);
                    draw_set_blend_mode_ext(bm_dest_color,bm_zero);
                    _T__L_114 = power(1.03,_T__L_113);
                    draw_surface(_T__L_112,0,0);
                    draw_surface_ext(_T__L_112,_T__L_139-_T__L_139*_T__L_114,_T__L_140-_T__L_140*_T__L_114,_T__L_114,_T__L_114,0,c_white,1);
                    _T__L_113 *= 2;
                    surface_reset_target()  
                }
                surface_set_target(_T__L_112);
                draw_set_blend_mode(bm_normal);
                draw_rectangle_color(0,0,1000,1000,0,0,0,0,0);
                if(_T__L_133!=-1){
                    draw_sprite_ext(_T__L_133,_T__L_81,(_T__L_37-_T__L_70)*_T__L_135,(_T__L_38-_T__L_71)*_T__L_135,1,1,_T__L_43,_T__L_129,1);
                }
                else{
                    draw_sprite_ext(_T__L_79,_T__L_81,(_T__L_37-_T__L_70)*_T__L_135,(_T__L_38-_T__L_71)*_T__L_135,_T__L_76*_T__L_135,_T__L_77*_T__L_135,_T__L_43,_T__L_129,1);
                }
                
                draw_set_blend_mode_ext(bm_dest_color,bm_zero);
                draw_surface(_T__L_115,0,0);
                draw_set_blend_mode_ext(bm_src_color,bm_one);
                draw_set_color(c_black);
                draw_rectangle(-10000,-10000,10000,10000,0); 
                draw_set_blend_mode(bm_normal);
            }
            else{
                
                surface_set_target(_T__L_112);
                draw_set_blend_mode(bm_normal);
                
                draw_rectangle_color(0,0,1000,1000,0,0,0,0,0);
                if(_T__L_133!=-1){
                    draw_sprite_ext(_T__L_133,_T__L_81,(_T__L_37-_T__L_70)*_T__L_135,(_T__L_38-_T__L_71)*_T__L_135,1,1,_T__L_43,_T__L_129,1);
                }
                else{
                    draw_sprite_ext(_T__L_79,_T__L_81,(_T__L_37-_T__L_70)*_T__L_135,(_T__L_38-_T__L_71)*_T__L_135,_T__L_76*_T__L_135,_T__L_77*_T__L_135,_T__L_43,_T__L_129,1);
                }
                
            }
            
            if(!_T__L_132 || !_T__L_134){
            _T__L_82=0;
             repeat(ds_list_size(global._T__L_13)){   
                _T__L_12=ds_list_find_value(global._T__L_13,_T__L_82); 
                _T__L_84=ds_list_find_value(_T__L_12,0);
                _T__L_74=ds_list_find_value(_T__L_84,1);
                _T__L_75=ds_list_find_value(_T__L_84,2);
                _T__L_141=ds_list_find_value(_T__L_84,6);
                _T__L_120=ds_list_find_value(_T__L_84,8);
                _T__L_87=ds_list_find_value(_T__L_84,3);
                
                if(!_T__L_120||!_T__L_116){
                  if (point_distance(_T__L_37,_T__L_38,_T__L_74,_T__L_75)<_T__L_86+_T__L_87){
                    _T__L_10=1;
                    repeat(ds_list_size(_T__L_12)-2){
                        _T__L_85=ds_list_find_value(_T__L_12,_T__L_10);
                        _T__L_142=ds_list_find_value(_T__L_85,0);
                        _T__L_143=ds_list_find_value(_T__L_85,1);
                        _T__L_144=ds_list_find_value(_T__L_12,_T__L_10+1);
                        _T__L_145=ds_list_find_value(_T__L_144,0);
                        _T__L_146=ds_list_find_value(_T__L_144,1);
                        _T__L_126=max(point_distance(0,0,(_T__L_146-_T__L_143),(_T__L_142-_T__L_145)),0.001);
                        _T__L_127=max(point_distance(0,0,(_T__L_142-_T__L_37),(_T__L_143-_T__L_38)),0.001);
                        if(((((_T__L_146-_T__L_143)*(_T__L_142-_T__L_37))+((_T__L_142-_T__L_145)*(_T__L_143-_T__L_38)))/_T__L_126/_T__L_127)<0 || ds_list_size(_T__L_12)<5){
                            _T__L_102=point_distance(_T__L_142,_T__L_143,_T__L_37,_T__L_38)*_T__L_130;
                            _T__L_103=point_distance(_T__L_145,_T__L_146,_T__L_37,_T__L_38)*_T__L_130;
                            _T__L_147=point_direction(_T__L_37,_T__L_38,_T__L_142,_T__L_143);
                            _T__L_148=point_direction(_T__L_37,_T__L_38,_T__L_145,_T__L_146);
                            _T__L_96=lengthdir_x(_T__L_102,_T__L_147)+_T__L_142;
                            _T__L_149=lengthdir_y(_T__L_102,_T__L_147)+_T__L_143;
                            _T__L_97=lengthdir_x(_T__L_103,_T__L_148)+_T__L_145;
                            _T__L_150=lengthdir_y(_T__L_103,_T__L_148)+_T__L_146;
                            _T__L_98=lengthdir_x(_T__L_102*10000,_T__L_147)+_T__L_142;
                            _T__L_151=lengthdir_y(_T__L_102*10000,_T__L_147)+_T__L_143;
                            _T__L_99=lengthdir_x(_T__L_103*10000,_T__L_148)+_T__L_145;
                            _T__L_152=lengthdir_y(_T__L_103*10000,_T__L_148)+_T__L_146;
                            draw_primitive_begin_texture(pr_trianglestrip,sprite_get_texture(global._T__L_65,0)); 
                            draw_vertex_texture((_T__L_142-_T__L_70)*_T__L_135,(_T__L_143-_T__L_71)*_T__L_135,0,0);
                            draw_vertex_texture((_T__L_96-_T__L_70)*_T__L_135,(_T__L_149-_T__L_71)*_T__L_135,0,1);
                            
                            
                            draw_vertex_texture((_T__L_145-_T__L_70)*_T__L_135,(_T__L_146-_T__L_71)*_T__L_135,1,0);
                            draw_vertex_texture((_T__L_97-_T__L_70)*_T__L_135,(_T__L_150-_T__L_71)*_T__L_135,1,1);
                            draw_primitive_end();
                            draw_primitive_begin(pr_trianglestrip); 
                            draw_vertex((_T__L_96-_T__L_70)*_T__L_135,(_T__L_149-_T__L_71)*_T__L_135);
                            draw_vertex((_T__L_98-_T__L_70)*_T__L_135,(_T__L_151-_T__L_71)*_T__L_135);
                            draw_vertex((_T__L_97-_T__L_70)*_T__L_135,(_T__L_150-_T__L_71)*_T__L_135);
                            draw_vertex((_T__L_99-_T__L_70)*_T__L_135,(_T__L_152-_T__L_71)*_T__L_135);
                            draw_primitive_end();
                            if(_T__L_141){
                                _T__L_153=_T__L_147-_T__L_131;
                                _T__L_154=_T__L_147+_T__L_131;
                                _T__L_100=lengthdir_x(view_wview[global._T__L_58],_T__L_153)+_T__L_142;
                                _T__L_155=lengthdir_y(view_wview[global._T__L_58],_T__L_153)+_T__L_143;
                                _T__L_101=lengthdir_x(view_wview[global._T__L_58],_T__L_154)+_T__L_142;
                                _T__L_156=lengthdir_y(view_wview[global._T__L_58],_T__L_154)+_T__L_143;
                                draw_primitive_begin_texture(pr_trianglelist,sprite_get_texture(global._T__L_64,0));
                                draw_vertex_texture((_T__L_142-_T__L_70)*_T__L_135,(_T__L_143-_T__L_71)*_T__L_135,0.5,1);
                                draw_vertex_texture((_T__L_100-_T__L_70)*_T__L_135,(_T__L_155-_T__L_71)*_T__L_135,0,0);
                                draw_vertex_texture((_T__L_101-_T__L_70)*_T__L_135,(_T__L_156-_T__L_71)*_T__L_135,1,0);
                                draw_primitive_end();
                                _T__L_153=_T__L_148+_T__L_131;
                                _T__L_154=_T__L_148-_T__L_131;
                                _T__L_100=lengthdir_x(view_wview[global._T__L_58],_T__L_153)+_T__L_142;
                                _T__L_155=lengthdir_y(view_wview[global._T__L_58],_T__L_153)+_T__L_143;
                                _T__L_101=lengthdir_x(view_wview[global._T__L_58],_T__L_154)+_T__L_142;
                                _T__L_156=lengthdir_y(view_wview[global._T__L_58],_T__L_154)+_T__L_143;
                                draw_primitive_begin_texture(pr_trianglelist,sprite_get_texture(global._T__L_64,0));
                                draw_vertex_texture((_T__L_145-_T__L_70)*_T__L_135,(_T__L_146-_T__L_71)*_T__L_135,0.5,1);
                                draw_vertex_texture((_T__L_100-_T__L_70)*_T__L_135,(_T__L_155-_T__L_71)*_T__L_135,0,0);
                                draw_vertex_texture((_T__L_101-_T__L_70)*_T__L_135,(_T__L_156-_T__L_71)*_T__L_135,1,0);
                                draw_primitive_end();
                            }
                        }
                        _T__L_10+=1;
                    }
                  }
                }
                _T__L_82+=1;
             }
             
            }
            
            if(_T__L_134){
            _T__L_82=0;
             repeat(ds_list_size(global._T__L_14)){   
                _T__L_12=ds_list_find_value(global._T__L_14,_T__L_82); 
                _T__L_84=ds_list_find_value(_T__L_12,0);
                _T__L_74=ds_list_find_value(_T__L_84,1);
                _T__L_75=ds_list_find_value(_T__L_84,2);
                _T__L_141=ds_list_find_value(_T__L_84,6);
                _T__L_120=ds_list_find_value(_T__L_84,8);
                _T__L_87=ds_list_find_value(_T__L_84,3);
                if(!_T__L_120||!_T__L_116){
                  if (point_distance(_T__L_37,_T__L_38,_T__L_74,_T__L_75)<_T__L_86+_T__L_87){
                    _T__L_10=1;
                    repeat(ds_list_size(_T__L_12)-2){
                        _T__L_85=ds_list_find_value(_T__L_12,_T__L_10);
                        _T__L_142=ds_list_find_value(_T__L_85,0);
                        _T__L_143=ds_list_find_value(_T__L_85,1);
                        _T__L_144=ds_list_find_value(_T__L_12,_T__L_10+1);
                        _T__L_145=ds_list_find_value(_T__L_144,0);
                        _T__L_146=ds_list_find_value(_T__L_144,1);
                        _T__L_126=max(point_distance(0,0,(_T__L_146-_T__L_143),(_T__L_142-_T__L_145)),0.001);
                        _T__L_127=max(point_distance(0,0,(_T__L_142-_T__L_37),(_T__L_143-_T__L_38)),0.001);
                        if(((((_T__L_146-_T__L_143)*(_T__L_142-_T__L_37))+((_T__L_142-_T__L_145)*(_T__L_143-_T__L_38)))/_T__L_126/_T__L_127)<0 || ds_list_size(_T__L_12)<5){
                            _T__L_102=point_distance(_T__L_142,_T__L_143,_T__L_37,_T__L_38)*_T__L_130;
                            _T__L_103=point_distance(_T__L_145,_T__L_146,_T__L_37,_T__L_38)*_T__L_130;
                            _T__L_147=point_direction(_T__L_37,_T__L_38,_T__L_142,_T__L_143);
                            _T__L_148=point_direction(_T__L_37,_T__L_38,_T__L_145,_T__L_146);
                            _T__L_96=lengthdir_x(_T__L_102,_T__L_147)+_T__L_142;
                            _T__L_149=lengthdir_y(_T__L_102,_T__L_147)+_T__L_143;
                            _T__L_97=lengthdir_x(_T__L_103,_T__L_148)+_T__L_145;
                            _T__L_150=lengthdir_y(_T__L_103,_T__L_148)+_T__L_146;
                            _T__L_98=lengthdir_x(_T__L_102*10000,_T__L_147)+_T__L_142;
                            _T__L_151=lengthdir_y(_T__L_102*10000,_T__L_147)+_T__L_143;
                            _T__L_99=lengthdir_x(_T__L_103*10000,_T__L_148)+_T__L_145;
                            _T__L_152=lengthdir_y(_T__L_103*10000,_T__L_148)+_T__L_146;
                            draw_primitive_begin_texture(pr_trianglestrip,sprite_get_texture(global._T__L_65,0)); 
                            draw_vertex_texture((_T__L_142-_T__L_70)*_T__L_135,(_T__L_143-_T__L_71)*_T__L_135,0,0);
                            draw_vertex_texture((_T__L_96-_T__L_70)*_T__L_135,(_T__L_149-_T__L_71)*_T__L_135,0,1);
                            
                            
                            draw_vertex_texture((_T__L_145-_T__L_70)*_T__L_135,(_T__L_146-_T__L_71)*_T__L_135,1,0);
                            draw_vertex_texture((_T__L_97-_T__L_70)*_T__L_135,(_T__L_150-_T__L_71)*_T__L_135,1,1);
                            draw_primitive_end();
                            draw_primitive_begin(pr_trianglestrip); 
                            draw_vertex((_T__L_96-_T__L_70)*_T__L_135,(_T__L_149-_T__L_71)*_T__L_135);
                            draw_vertex((_T__L_98-_T__L_70)*_T__L_135,(_T__L_151-_T__L_71)*_T__L_135);
                            draw_vertex((_T__L_97-_T__L_70)*_T__L_135,(_T__L_150-_T__L_71)*_T__L_135);
                            draw_vertex((_T__L_99-_T__L_70)*_T__L_135,(_T__L_152-_T__L_71)*_T__L_135);
                            draw_primitive_end();
                            if(_T__L_141){
                                _T__L_153=_T__L_147-_T__L_131;
                                _T__L_154=_T__L_147+_T__L_131;
                                _T__L_100=lengthdir_x(view_wview[global._T__L_58],_T__L_153)+_T__L_142;
                                _T__L_155=lengthdir_y(view_wview[global._T__L_58],_T__L_153)+_T__L_143;
                                _T__L_101=lengthdir_x(view_wview[global._T__L_58],_T__L_154)+_T__L_142;
                                _T__L_156=lengthdir_y(view_wview[global._T__L_58],_T__L_154)+_T__L_143;
                                draw_primitive_begin_texture(pr_trianglelist,sprite_get_texture(global._T__L_64,0));
                                draw_vertex_texture((_T__L_142-_T__L_70)*_T__L_135,(_T__L_143-_T__L_71)*_T__L_135,0.5,1);
                                draw_vertex_texture((_T__L_100-_T__L_70)*_T__L_135,(_T__L_155-_T__L_71)*_T__L_135,0,0);
                                draw_vertex_texture((_T__L_101-_T__L_70)*_T__L_135,(_T__L_156-_T__L_71)*_T__L_135,1,0);
                                draw_primitive_end();
                                _T__L_153=_T__L_148+_T__L_131;
                                _T__L_154=_T__L_148-_T__L_131;
                                _T__L_100=lengthdir_x(view_wview[global._T__L_58],_T__L_153)+_T__L_142;
                                _T__L_155=lengthdir_y(view_wview[global._T__L_58],_T__L_153)+_T__L_143;
                                _T__L_101=lengthdir_x(view_wview[global._T__L_58],_T__L_154)+_T__L_142;
                                _T__L_156=lengthdir_y(view_wview[global._T__L_58],_T__L_154)+_T__L_143;
                                draw_primitive_begin_texture(pr_trianglelist,sprite_get_texture(global._T__L_64,0));
                                draw_vertex_texture((_T__L_145-_T__L_70)*_T__L_135,(_T__L_146-_T__L_71)*_T__L_135,0.5,1);
                                draw_vertex_texture((_T__L_100-_T__L_70)*_T__L_135,(_T__L_155-_T__L_71)*_T__L_135,0,0);
                                draw_vertex_texture((_T__L_101-_T__L_70)*_T__L_135,(_T__L_156-_T__L_71)*_T__L_135,1,0);
                                draw_primitive_end();
                            }
                        }
                        _T__L_10+=1;
                    }
                  }
                }
                _T__L_82+=1;
             }
             
            }
            
            
           
           if(_T__L_132 ){
            if(_T__L_134){
             if(sprite_exists(_T__L_133)){sprite_delete(_T__L_133);}
             var _T__L_157;
             _T__L_158=sprite_create_from_surface(_T__L_112,0,0,surface_get_width(_T__L_112),surface_get_height(_T__L_112),0,0,sprite_get_xoffset(_T__L_79)*_T__L_76*_T__L_135,sprite_get_yoffset(_T__L_79)*_T__L_77*_T__L_135);
             ds_list_replace(_T__L_11,7,_T__L_158);
             ds_list_replace(_T__L_11,8,0);
            }
           }
            
        surface_reset_target();
        
        if (!surface_exists(global._T__L_57)) {
            global._T__L_57 = surface_create(view_wview[global._T__L_58]*global._T__L_59, view_hview[global._T__L_58]);
            if (!surface_exists(global._T__L_57)){
                draw_set_color(_T__L_36);
                return 0;
            }      
        }
        surface_set_target(global._T__L_57);
        draw_set_blend_mode(bm_add);
        draw_surface_part_ext(_T__L_112,0,0,surface_get_width(_T__L_112)-1,surface_get_height(_T__L_112)-1,(_T__L_70-_T__L_66)*_T__L_110,(_T__L_71-_T__L_67)*_T__L_110,1/_T__L_111,1/_T__L_111,-1,1);
        draw_set_blend_mode(bm_normal);
        surface_reset_target();
        
        surface_free(_T__L_112);
        surface_free(_T__L_115);
      }
    
    }
    _T__L_8+=1;
}
draw_set_color(_T__L_36);
return 1

#define tl_view_instance
view_xview[global._T__L_58]=argument0.x-(view_wview[global._T__L_58]/2);
view_yview[global._T__L_58]=argument0.y-(view_hview[global._T__L_58]/2);
if(view_xview[global._T__L_58]<0){view_xview[global._T__L_58]=0;}
else if(view_xview[global._T__L_58]+view_wview[global._T__L_58]>room_width){view_xview[global._T__L_58]=room_width-view_wview[global._T__L_58];}
if(view_yview[global._T__L_58]<0){view_yview[global._T__L_58]=0;}
else if(view_yview[global._T__L_58]+view_hview[global._T__L_58]>room_height){view_yview[global._T__L_58]=room_height-view_hview[global._T__L_58];}

#define tl_view_set
global._T__L_58=median(0,floor(argument0),7);

