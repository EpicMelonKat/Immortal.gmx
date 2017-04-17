///scr_createproj(x,y,sprite,speed,spdmodifier,col,effect,efcol)
newproj = instance_create(argument0,argument1,obj_projectile)
newproj.sprite_index = argument2
newproj.spd = argument3
newproj.spdmod = argument4
newproj.image_blend = argument5
newproj.effect = argument6
newproj.efcol = argument7
newproj.holder = holder
newproj.oholder = oholder
return newproj