//chance movement
randomize()
if irandom_range(1,19000) {
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

//move
x+=xmod
y+=ymod