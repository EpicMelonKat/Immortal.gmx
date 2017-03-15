if attacking = false {
hand_distance = 24

hand_indistance = 16
hand_heightdist = 10

xval = holder.x
yval = holder.y
y = yval+hand_heightdist

pos[0] = xval-hand_distance
pos[1] = xval-hand_indistance
pos[2] = xval-hand_distance
pos[3] = xval-hand_distance

pos[4] = xval+hand_distance
pos[5] = xval+hand_indistance
pos[6] = xval+hand_distance
pos[7] = xval+hand_distance

if holder.image_index = 0 {
    dmod = -1
}
if holder.image_index = 1 {
    dmod = -1
}
if holder.image_index = 2 {
    dmod = -1
}
if holder.image_index = 3 {
    dmod = -1
}

if holder.image_index = 4 {
    dmod = 1
}
if holder.image_index = 5 {
    dmod = 1
}
if holder.image_index = 6 {
    dmod = 1
}
if holder.image_index = 7 {
    dmod = 1
}



x = pos[holder.image_index]

scr_depth()
depth+=dmod

if x > holder.x {
    depth = holder.depth+1
}
if x < holder.x {
    depth = holder.depth-1
}
}
if attacking = true {
    x = holder.x
    y = holder.y
    scr_depth()
    if holder.lastdir = "up" {
        dmod = 1
    }
    if holder.lastdir = "down" {
        dmod = -1
    }
    depth+=dmod
}
