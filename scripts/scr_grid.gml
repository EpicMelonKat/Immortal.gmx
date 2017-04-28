///scr_grid(xpos,ypos,squares,squaresize,seperation,var,verticles)
xpos = argument0
ypos = argument1
squares = argument2+1
squaresize = argument3
sep = argument4
variable = argument5
verticles = argument6

totalsize = squares*squaresize
xpos-=totalsize/2

tsc = totalsize/2

if isel=-1 {
    oldsel=undefined
}
if variable = "player_inv" { //xpos+totalsize/2+5,ypos+totalsize/2+50
draw_roundrect(xpos+tsc-totalsize/2.1-3,ypos-squaresize-30-3-190,xpos+tsc+totalsize/2.1+3+10,ypos+3,0)
draw_roundrect(xpos-squaresize/2-3-5,ypos-squaresize/2-30-3,xpos+totalsize+squaresize/2+15+3,ypos+squaresize+squaresize/2+3+150,0)
draw_set_color(c_ltgray)
draw_roundrect(xpos+tsc-totalsize/2.1,ypos-squaresize-30-190,xpos+tsc+totalsize/2.1+10,ypos,0)
draw_roundrect(xpos-squaresize/2-5,ypos-squaresize/2-30,xpos+totalsize+squaresize/2+15,ypos+squaresize+squaresize/2+150,0)
}
if variable = "player_equipment" {
draw_set_color(c_blue)
    if instance_exists(obj_player) {
    if obj_player.currency!=undefined {
    draw_set_halign(fa_left)
    draw_text(xpos-5,ypos-100,"C:" + string(obj_player.currency))
    }
    }
}

squrcount=1
curvert = ypos
//every square has an increment number 1,2,3,4...
//the variable you want is given in the beginning
//if you combine those facts, you can use array like variable[1,2,3,4...]
//if you click in a certain square, that square's number will become true
squrtwo = true
for (curvert=ypos;curvert<ypos+verticles*(squaresize+sep);curvert=curvert) {
    for (i=xpos;i<xpos+totalsize;i=i) { //loop from left to right
    draw_rectangle_colour(i+1,curvert+1,i+squaresize-1,curvert+squaresize-1,c_ltgray,c_ltgray,c_ltgray,c_ltgray,0)
    
    if array_length_1d(squrval)-1<setsquare {
        squrval[setsquare]=0
    }
    
//    if mouse_check_button_pressed(mb_left) {
        if squrtwo = true {
        if mouse_x > i and mouse_x < i+squaresize {
            if mouse_y > curvert and mouse_y < curvert+squaresize {
                if squrval[setsquare]=0 {
                    squrval[setsquare]=1 //highlighted
                }
                if squrtwo = true {
                    if mouse_check_button_pressed(mb_left) {
                        squrtwo = false
                        if variable = "party_slots" and party[squrcount]!=-1 or variable = "player_inv" or variable = "player_storage" {
                        if isel!=setsquare {
                            isel = setsquare
                            if oldsel != undefined {
                                if oldsel!=isel {
                                    if variable = "player_storage" and instance_exists(obj_player) {
                                        //if selvar != undefined {
                                        //show_message(string(selvar))
                                        //}
                                        if selvar = "player_storage" {
                                            obj_player.inv_storage[oldsel] = obj_player.inv_storage[squrcount]
                                            obj_player.inv_storage[squrcount]=selvalue
                                            selvar = undefined
                                            selvalue = undefined
                                            oldsel = undefined
                                            isel=-1
                                        }
                                        if selvar = "player_inv" {
                                            //show_message("done")
                                            obj_player.inventory[oldsel] = obj_player.inv_storage[squrcount]
                                            obj_player.inv_storage[squrcount]=selvalue
                                            selvar = undefined
                                            selvalue = undefined
                                            oldsel = undefined
                                            isel=-1
                                        }

                                        //show_message(string(obj_player.inv_storage[squrcount]))
                                    }
                                    
                                    if variable = "player_inv" and instance_exists(obj_player) {
                                        //if selvar != undefined {
                                        //show_message(string(selvar))
                                        //}
                                        if selvar = "player_inv" {
                                            obj_player.inventory[oldsel] = obj_player.inventory[squrcount]
                                            obj_player.inventory[squrcount] = selvalue
                                            selvar = undefined
                                            selvalue = undefined
                                            oldsel = undefined
                                            isel=-1
                                        }
                                        if selvar = "player_storage" {
                                            obj_player.inv_storage[oldsel] = obj_player.inventory[squrcount]
                                            obj_player.inventory[squrcount] = selvalue
                                            selvar = undefined
                                            selvalue = undefined
                                            oldsel = undefined
                                            isel=-1
                                        }

                                        //show_message(string(obj_player.inv_storage[squrcount]))
                                    }
                                }
                            }
                            if variable = "player_inv" and instance_exists(obj_player) or variable = "player_storage" and instance_exists(obj_player){
                                selvar = variable
                                if variable = "player_inv" {
                                    selvalue = obj_player.inventory[squrcount]
                                }
                                if variable = "player_storage" {
                                    selvalue = obj_player.inv_storage[squrcount]
                                }
                                oldsel = squrcount
                            } else {
                                selvar = undefined
                                selvalue = undefined
                                oldsel = undefined
                            }
                        } else {
                            isel=-1
                        }
                        }
                    }
                }
            }
        }
        }
//    }
    if variable = "party_slots" {
    if isel=setsquare and party[squrcount]=-1 {
        isel=-1
    }
    }
    
    lwidth=4
    if array_length_1d(squrval)>=setsquare and squrval[setsquare]=1 {
        draw_set_color(c_dkgray)
    }
    if array_length_1d(squrval)>=setsquare and squrval[setsquare]=0 {
        draw_set_color(c_black)
    }
    if isel = setsquare {
        draw_set_color(c_white)
        lwidth=6
    }
    
    draw_line_width(i,curvert,i+squaresize,curvert,lwidth)
    draw_line_width(i,curvert+squaresize,i+squaresize,curvert+squaresize,lwidth)
    draw_line_width(i,curvert,i,curvert+squaresize,lwidth)
    draw_line_width(i+squaresize,curvert,i+squaresize,curvert+squaresize,lwidth)
    if squrval[setsquare]=1 {
        squrval[setsquare]=0
    }
    setsquare+=1
    draw_set_color(c_black)
    
    if variable = "player_storage" and instance_exists(obj_player) and array_length_1d(obj_player.inv_storage)>squrcount {
        draw_sprite_ext(obj_player.inv_storage[squrcount],1,i+squaresize/1.2,curvert+squaresize/1.2,65/sprite_get_width(obj_player.inv_storage[squrcount]),65/sprite_get_height(obj_player.inv_storage[squrcount]),45,c_white,1)
    }
    
    if variable = "player_inv" and instance_exists(obj_player) and array_length_1d(obj_player.inventory)>squrcount {
        draw_sprite_ext(obj_player.inventory[squrcount],1,i+squaresize/1.2,curvert+squaresize/1.2,65/sprite_get_width(obj_player.inventory[squrcount]),65/sprite_get_height(obj_player.inventory[squrcount]),45,c_white,1)
    }
    if variable = "party_slots" and instance_exists(obj_player) {
        if party[squrcount]!=-1 and instance_exists(party[squrcount]) and party[squrcount].sprite_index!=-1{
        //draw_sprite_ext(party[squrcount].sprite_index,1,i+squaresize/1.9,curvert+squaresize/1.9,65/sprite_get_width(party[squrcount].sprite_index)/1.8,65/sprite_get_height(party[squrcount].sprite_index)/1.8,0,c_white,1)
        draw_sprite_ext(party[squrcount].sprite_index,0,i+squaresize/1.9,curvert+squaresize/1.9,.65,.65,0,c_white,1)
        }
    }

    squrcount+=1
    i+=squaresize+sep
    }
    curvert+=squaresize+sep
}

if variable = "player_inv" {
    if instance_exists(obj_player) {
    draw_set_font(fnt_lives)
    draw_set_halign(fa_center)
    draw_set_color(c_purple)
    draw_text(xpos+totalsize/2+5,ypos+totalsize/2+50,string(obj_player.spirits))
    }
}
