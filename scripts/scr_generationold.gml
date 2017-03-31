
x = view_xview-340
y = view_yview-320

while x < view_xview+view_wview+320{
randomize()
if irandom(8000)=1 {
    biome = choose(1,2,3,4)
}
move_snap(320,320)

if place_meeting(x,y,obj_floor)=false{
instance_create(x,y,obj_floor)
}

x+=320

}
y+=320
x = view_xview-32

while x < view_xview+view_wview+320{
randomize()
if irandom(8000)=1 {
    biome = choose(1,2,3,4)
}
move_snap(320,320)

if place_meeting(x,y,obj_floor)=false{
instance_create(x,y,obj_floor)
}

x+=320

}
y+=320
x = view_xview-32
while x < view_xview+view_wview+320{
randomize()
if irandom(8000)=1 {
    biome = choose(1,2,3,4)
}
move_snap(320,320)

if place_meeting(x,y,obj_floor)=false{
instance_create(x,y,obj_floor)
}

x+=320

}
y+=320
x = view_xview-32
while x < view_xview+view_wview+320{
randomize()
if irandom(8000)=1 {
    biome = choose(1,2,3,4)
}
move_snap(320,320)

if place_meeting(x,y,obj_floor)=false{
instance_create(x,y,obj_floor)
}

x+=320

}


y+=320
x = view_xview-32
while x < view_xview+view_wview+320{
randomize()
if irandom(8000)=1 {
    biome = choose(1,2,3,4)
}
move_snap(320,320)

if place_meeting(x,y,obj_floor)=false{
instance_create(x,y,obj_floor)
}

x+=320

}