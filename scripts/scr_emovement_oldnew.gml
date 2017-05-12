//ATTACK
attack_key=0
radview = 800
if instance_exists(weapon) {
    if weapon.weapon_type = "melee" {
        sightdist = sprite_get_height(weapon.sprite_index)-20
    }
    if weapon.weapon_type = "magic" or weapon.weapon_type = "range" {
        sightdist = 500
    }
}
if aimermode = "self" {
    aimer.x=x
    aimer.y=y
}
nearest=99999
nrival = undefined

//set aimer
for (i=0;i!=array_length_1d(rival_list);i+=1) {
    if instance_exists(rival_list[i]) {
        rdist = instance_nearest(x,y,rival_list[i])
        if distance_to_object(rdist) < nearest and distance_to_object(rdist) < radview{
            nearest = distance_to_object(rdist)
            nrival = rdist
        }
    }
}
if nrival!=undefined and instance_exists(nrival) and instance_exists(weapon) {
    if misses <= 3 or weapon.weapon_type="melee" {
        aimer.x = nrival.x
        aimer.y = nrival.y
        aimermode = "target"
    }
    if misses > 3 and weapon.weapon_type!="melee" {
        nrival.codetarget=id
        with(nrival) {
            codetarget.aimer.x = x+(xmod*(distance_to_object(codetarget)/8))//x+xmod
            codetarget.aimer.y = y+(ymod*(distance_to_object(codetarget)/8))//y+ymod
            aimermode = "target"
        }  
    }
}
//

if nrival != undefined {
    loc = scr_dirdetect(nrival)
    if distance_to_point(nrival.x,nrival.y)<=sightdist {
        if aimermode = "target" {
            attack_key=1
        }
    }
}
//MOVEMENT
//random wander
if instance_exists(weapon) and aimermode="self" or instance_exists(weapon)=false and aimermode="self" {
    randomize()
    rangecheck = irandom_range(1,360)
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
}
if instance_exists(weapon) {
    //target is seen:
    if nrival != undefined {
        if weapon.attackable=true and distance_to_object(nrival) < radview and weapon.attacking=false{
        //movetowards
        if loc = "below" {
            move_up=0
            move_down=1
            move_left=0
            move_right=0
        }
        if loc = "right" {
            move_left=0
            move_right=1
            move_up=0
            move_down=0
        }
        if loc = "left" {
            move_right=0
            move_left=1
            move_up=0
            move_down=0
        }
        if loc = "above" {
            move_down=0
            move_up=1
            move_left=0
            move_right=0
        }
        if loc = "above_left" {
            move_right=0
            move_down=0
            move_left=1
            move_up=1
        }
        if loc = "above_right" {
            move_left=0
            move_down=0
            move_right=1
            move_up=1
        }
        if loc = "below_left" {
            move_right=0
            move_up=0
            move_left=1
            move_down=1
        }
        if loc = "below_right" {
            move_left=0
            move_up=0
            move_right=1
            move_down=1
        }
        
        }
        if distance_to_object(nrival) < radview and weapon.attacking=true and weapon.attackable=false {
            move_up=0
            move_down=0
            move_left=0
            move_right=0
        }
        
        if weapon.attackable=false and distance_to_object(nrival)<sightdist and weapon.attacking=false {
        loc = scr_dirdetect(nrival)
        if loc = "below" {
            move_up=1
            move_down=0
            move_left=0
            move_right=0
        }
        if loc = "right" {
            move_left=1
            move_right=0
            move_up=0
            move_down=0
        }
        if loc = "left" {
            move_right=1
            move_left=0
            move_up=0
            move_down=0
        }
        if loc = "above" {
            move_down=1
            move_up=0
            move_left=0
            move_right=0
        }
        if loc = "above_left" {
            move_right=1
            move_down=1
            move_left=0
            move_up=0
        }
        if loc = "above_right" {
            move_left=1
            move_down=1
            move_right=0
            move_up=0
        }
        if loc = "below_left" {
            move_right=1
            move_up=1
            move_left=0
            move_down=0
        }
        if loc = "below_right" {
            move_left=1
            move_up=1
            move_right=0
            move_down=0
        }
        }
        
    }
    //if rival is not near, move towards aimer. if at aimer, wander randomly
    //target is not seen:
    if nrival = undefined and aimermode = "target" or nrival !=undefined and distance_to_object(nrival)>radview and aimermode = "target"{
        if distance_to_object(aimer)>300 {
        loc = scr_dirdetect(aimer)
        if loc = "below" {
            move_up=0
            move_down=1
            move_left=0
            move_right=0
        }
        if loc = "right" {
            move_left=0
            move_right=1
            move_up=0
            move_down=0
        }
        if loc = "left" {
            move_right=0
            move_left=1
            move_up=0
            move_down=0
        }
        if loc = "above" {
            move_down=0
            move_up=1
            move_left=0
            move_right=0
        }
        if loc = "above_left" {
            move_right=0
            move_down=0
            move_left=1
            move_up=1
        }
        if loc = "above_right" {
            move_left=0
            move_down=0
            move_right=1
            move_up=1
        }
        if loc = "below_left" {
            move_right=0
            move_up=0
            move_left=1
            move_down=1
        }
        if loc = "below_right" {
            move_left=0
            move_up=0
            move_right=1
            move_down=1
        }
        }
        if distance_to_object(aimer)<=300 {
            move_up=0
            move_down=0
            move_left=0
            move_right=0
            aimermode="self"
        }
    }
}
if move_left=1 and move_right=1 {
move_left=0
move_right=0
}
if move_up=1 and move_down=1 {
move_up=0
move_down=0
}
if move_up=1 {
lastdir = "up"
}
if move_down=1 {
lastdir = "down"
}
xmod = ((move_left*-1)+move_right)*2
ymod = ((move_up*-1)+move_down)*2
if lastdir = "up" {
    minframe = 4
    maxframe = 4
}
if lastdir = "down" {
    minframe = 0
    maxframe = 0
}
if ymod!=0 {
    if lastdir = "up" {
        minframe = 4
        maxframe = 8
    }
    if lastdir = "down" {
        minframe = 0
        maxframe = 4
    }
}
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
scr_animate(minframe,maxframe,0.1)

x+=xmod
y+=ymod