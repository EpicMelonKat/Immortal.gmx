if recdamage != 0 { //regular
t_recdamage = round(recdamage/defense)
if t_recdamage < 1 {
t_recdamage = 1
}
randomize()
rdist = irandom_range(1,15)
randomize()
rval = choose(-1,1)
dam = instance_create(x+(rdist*rval),y-sprite_height/2,obj_Damage)
dam.damage = t_recdamage
dam.usecol = c_black
myhealth-=t_recdamage
recdamage = 0
}

if recfire != 0 { //fire
t_recfire = round(recfire/defense)
if t_recfire < 1 {
t_recfire = 1
}
randomize()
rdist = irandom_range(1,15)
randomize()
rval = choose(-1,1)
dam = instance_create(x+(rdist*rval),y-sprite_height/2,obj_Damage)
dam.damage = t_recfire
dam.usecol = c_red
myhealth-=t_recfire
recfire = 0
}

if recwater != 0 { //water
t_recwater = round(recwater/defense)
if t_recwater < 1 {
t_recwater = 1
}
randomize()
rdist = irandom_range(1,15)
randomize()
rval = choose(-1,1)
dam = instance_create(x+(rdist*rval),y-sprite_height/2,obj_Damage)
dam.damage = t_recwater
dam.usecol = c_aqua
myhealth-=t_recwater
recwater = 0
}

if recwind != 0 { //wind
t_recwind = round(recwind/defense)
if t_recwind < 1 {
t_recwind = 1
}
randomize()
rdist = irandom_range(1,15)
randomize()
rval = choose(-1,1)
dam = instance_create(x+(rdist*rval),y-sprite_height/2,obj_Damage)
dam.damage = t_recwind
dam.usecol = c_white
myhealth-=t_recwind
recwind = 0
}

if recearth != 0 {  //earth
t_recearth = round(recearth/defense)
if t_recearth < 1 {
t_recearth = 1
}
randomize()
rdist = irandom_range(1,15)
randomize()
rval = choose(-1,1)
dam = instance_create(x+(rdist*rval),y-sprite_height/2,obj_Damage)
dam.damage = t_recearth
dam.usecol = c_yellow
myhealth-=t_recearth
recearth = 0
}
