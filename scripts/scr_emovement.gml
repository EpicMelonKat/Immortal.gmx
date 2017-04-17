//ATTACK PATTERNS
//set aimer to nearest rival
randomize()
rangecheck = irandom_range(1,360)
nearest = 999999
nearestobj = -1
sightdist = 100
dodgedist = 350
if instance_exists(weapon) {
if weapon.weapon_type = "melee" {
sightdist = sprite_get_height(weapon.sprite_index)-60
}
if weapon.weapon_type = "magic" or weapon.weapon_type = "range" {
sightdist = 600
}
}
{
for (i=0;i!=array_length_1d(rival_list);i+=1) {
    if instance_exists(rival_list[i])=true {
        if distance_to_object(instance_nearest(x,y,rival_list[i])) < nearest {
            nearest = distance_to_object(instance_nearest(x,y,rival_list[i]))
            nearestobj = instance_nearest(x,y,rival_list[i]).id
            nearesto = instance_nearest(x,y,rival_list[i]).object_index
            if distance_to_object(nearestobj) < 800 {
            if misses <= 3 { //Direct Aiming
            aimer.x = nearestobj.x
            aimer.y = nearestobj.y
            }
            if misses > 3 { //Experimental Aiming
                if instance_exists(nearestobj) {
                    nearestobj.codetarget=id
                    with(nearestobj) {
                        if instance_exists(codetarget) {
                        codetarget.aimer.x = x+(xmod*(distance_to_object(codetarget)/8))//x+xmod
                        codetarget.aimer.y = y+(ymod*(distance_to_object(codetarget)/8))//y+ymod
                        }
                    }
                }
            }
            
            }
        }
    }
}
if nearestobj != -1 {
    if distance_to_point(nearestobj.x,nearestobj.y)<sightdist {
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
//Target Movement
if instance_exists(weapon) and weapon.attackable=true {
if instance_exists(obj_projectile) and distance_to_object(instance_nearest(x,y,obj_projectile)) > dodgedist or instance_exists(obj_projectile)=false or instance_exists(obj_projectile)=true and damaged>=3 {
    if distance_to_object(aimer) > sightdist/2 {
        //if aimer is to dodgedist more side than elevation, move to the side. opposite. diagonal
        hori = x-aimer.x //horizontal difference
        elev = y-aimer.y //vertical difference
        
        
        if hori > 0 {
            if hori >= sightdist/2 {
                //move_right=0
                //move_left=1
                xmod=-2
            }
        }
        if hori < 0 {
            if abs(hori) >= sightdist/2 {
                //move_left=0
                //move_right=1
                xmod=2
            }
        }
        if elev < 0 {
            if abs(elev) >= sightdist/2 {
                //move_up=0
                //move_down=1
                ymod=2
            }
        }
        if elev > 0 {
            if elev >= sightdist/2 {
                //move_down=0
                //move_up=1
                ymod=-2
            }
        }
        

    }
}
}
//Avoid
if instance_exists(obj_projectile) and damaged<3 {
if distance_to_object(instance_nearest(x,y,obj_projectile)) <= dodgedist { //and instance_nearest(x,y,obj_projectile).weapon.oholder!=object_index {
clospro = point_direction(x,y,instance_nearest(x,y,obj_projectile).x,instance_nearest(x,y,obj_projectile).y)
if clospro>=30 and clospro <=60 or clospro>=120 and clospro<=150 or clospro>=210 and clospro<=240 or clospro>=300 and clospro<=330{
//diagonal directions
if clospro >= 30 and clospro <= 60 { //if proj is coming from top-right
    ymod=-2*dodgeloop
    xmod=-2*dodgeloop
}

if clospro >= 120 and clospro <= 150 { //if proj is coming from top-left
    ymod=-2*dodgeloop
    xmod=2*dodgeloop
}

if clospro >= 210 and clospro <= 240 { //if proj is coming from bottom-left
    ymod=2*dodgeloop
    xmod=2*dodgeloop
}

if clospro >= 300 and clospro <= 330 { //if proj is coming from bottom-right
    ymod=2*dodgeloop
    xmod=-2*dodgeloop
}
} else {
//cardinal directions
if clospro >= 45 and clospro <= 135 { //if proj is coming from up
    if ymod<0 {
        ymod=0
    }
    if xmod=0 {
        xmod = (choose(dodgeloop))*2
    }
}
if clospro >= 136 and clospro <= 225 { //if proj is coming from left
    if xmod<0 {
        xmod=0
    }
    if ymod=0 {
        ymod = (choose(dodgeloop))*2
    }
}
if clospro >= 226 and clospro <= 315 { //if proj is coming from down
    if ymod>0 {
        ymod=0
    }
    if xmod=0 {
        xmod = (choose(dodgeloop))*2
    }
} else { //if proj is coming from right
    if xmod>0 {
        xmod=0
    }
    if ymod=0 {
        ymod = (choose(dodgeloop))*2
    }
}
}
}
}
//Target Avoiding
if instance_exists(weapon) {
if nearestobj != -1 and weapon.attackable=false and distance_to_object(nearestobj) < sightdist*1.6 and weapon.weapon_type="melee" {
    if nearestobj.x > x {
        xmod=-2
    }
    if nearestobj.x <= x {
        xmod=2
    }
    if nearestobj.y > y {
        ymod=-2
    }
    if nearestobj.y <= y {
        ymod=2
    }
}
}

if lastdir = "up" {
minframe=0
maxframe=0
}
if lastdir = "down" {
minframe = 4
maxframe = 4
}
if instance_exists(weapon) {
if weapon.attacking = false {

if xmod!=0 {
    if lastdir = "up" {
        minframe = 4
        maxframe = 8
    }
    if lastdir = "down" {
        minframe = 0
        maxframe = 4
    }
}

if ymod < 0 {
    lastdir = "up"
    minframe = 4
    maxframe = 8
}
if ymod > 0 {
    lastdir = "down"
    minframe = 0
    maxframe = 4
}
}
}

scr_animate(minframe,maxframe,0.1)

//move
x+=xmod
y+=ymod
//
