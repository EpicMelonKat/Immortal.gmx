//ATTACK
//set aimer to nearest rival
nearest = 999999
nearestobj = -1
sightdist = 100
dodgedist = 350
if instance_exists(weapon) {
if weapon.weapon_type = "melee" {
sightdist = 100
}
if weapon.weapon_type = "magic" {
sightdist = 800
}
}
{
for (i=0;i!=array_length_1d(rival_list);i+=1) {
    if instance_exists(rival_list[i])=true {
        if distance_to_object(instance_nearest(x,y,rival_list[i])) < nearest {
            nearest = distance_to_object(instance_nearest(x,y,rival_list[i]))
            nearestobj = instance_nearest(x,y,rival_list[i])
            aimer.x = nearestobj.x
            aimer.y = nearestobj.y
        }
    }
}
if nearestobj != -1 {
    if distance_to_object(aimer) <= sightdist {
        attack_key=1
    } else {
        attack_key=0
    }
}



//
//MOVEMENT
//chance movement
randomize()
//Passive Movement
if instance_exists(obj_projectile) and distance_to_object(instance_nearest(x,y,obj_projectile)) > dodgedist or instance_exists(obj_projectile)=false 
rangecheck = irandom_range(1,320)
if rangecheck = 310 {
    move_up=0
    move_down=0
    move_left=0
    move_right=0
}
if rangecheck = 50 {
movech = choose("up","down","left","right")
if movech = "up" {
    if move_up = 1 {
        move_up=0
    } else {
        move_up=1
    }
}
if movech = "down" {
    if move_down = 1 {
        move_down=0
    } else {
        move_down=1
    }
}
if movech = "left" {
    if move_left = 1 {
        move_left=0
    } else {
        move_left=1
    }
}
if movech = "right" {
    if move_right = 1 {
        move_right=0
    } else {
        move_right=1
    }
}
}
//set modifiers
xmod = ((move_left*-1)+move_right)*2
ymod = ((move_up*-1)+move_down)*2
}

//Avoid
if instance_exists(obj_projectile) {
if distance_to_object(instance_nearest(x,y,obj_projectile)) <= dodgedist { //and instance_nearest(x,y,obj_projectile).weapon.oholder!=object_index {
clospro = point_direction(x,y,instance_nearest(x,y,obj_projectile).x,instance_nearest(x,y,obj_projectile).y)
if clospro >= 45 and clospro <= 135 { //if proj is coming from up
    if ymod<0 {
        ymod=0
    }
    if xmod=0 {
        xmod = (choose(-1,1))*2
    }
}
if clospro >= 136 and clospro <= 225 { //if proj is coming from left
    if xmod<0 {
        xmod=0
    }
    if ymod=0 {
        ymod = (choose(-1,1))*2
    }
}
if clospro >= 226 and clospro <= 315 { //if proj is coming from down
    if ymod>0 {
        ymod=0
    }
    if xmod=0 {
        xmod = (choose(-1,1))*2
    }
} else { //if proj is coming from right
    if xmod>0 {
        xmod=0
    }
    if ymod=0 {
        ymod = (choose(-1,1))*2
    }
}
}
}


//move
x+=xmod
y+=ymod
//