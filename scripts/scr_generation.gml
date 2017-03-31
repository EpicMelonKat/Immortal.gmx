///scr_generation(distance,scale)

x = obj_player.x
y = obj_player.y

//req variables
gendist = 2 //1,2,3,4,5...   1=default
biome = 1
scale = 2 //1,2,3,4,5... 1=default

//set generator to top left
x = obj_player.x-(view_wview/2+(view_wview/3*gendist))
y = obj_player.y-(view_hview/2+(view_hview/3*gendist))

//loop through positions and create floors (will generate in a square)


while x < obj_player.x+((view_wview/2)+(view_wview/3)*gendist) and y < obj_player.y+((view_hview/2)+(view_hview/3)*gendist) { //do until at bottom right
        
        while x < obj_player.x+((view_wview/2)+(view_wview/3)*gendist) {
            move_snap(320/(scale),320/(scale))
            if place_meeting(x,y,obj_floor)=false {
                newfloor = instance_create(x,y,obj_floor)
            }
            x+=320/(scale)
        }
    x = obj_player.x-(view_wview/2+(view_wview/3*gendist))
    y+=320/(scale)
}
