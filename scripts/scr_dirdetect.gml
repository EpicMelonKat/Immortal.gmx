///scr_dirdetect(object)
//below,above,left,right,above_right,above_left,below_right,below_left
if instance_exists(argument0) {
dd_dir = point_direction(x,y,argument0.x,argument0.y)
//above_right:
if dd_dir >= 22.5 and dd_dir < 67.5 {
    return "above_right"
    exit
}
//above:
if dd_dir >= 67.5 and dd_dir < 112.5 {
    return "above"
    exit
}
//above_left:
if dd_dir >= 112.5 and dd_dir < 157.5 {
    return "above_left"
    exit
}
//left:
if dd_dir >= 157.5 and dd_dir < 202.5 {
    return "left"
    exit
}
//below_left:
if dd_dir >= 202.5 and dd_dir < 247.5 {
    return "below_left"
    exit
}
//below:
if dd_dir >= 247.5 and dd_dir < 292.5 {
    return "below"
    exit
}
//below_right:
if dd_dir >= 292.5 and dd_dir < 337.5 {
    return "below_right"
    exit
}
//right:
    return "right"
    exit
}
