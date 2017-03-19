///scr_upgradebox(xpos,ypos,text,variable)
xpos = argument0
ypos = argument1
text = argument2
variable = argument3
width = 60
height = 16
draw_set_color(c_yellow)
draw_rectangle(xpos-width,ypos-height/2-5,xpos+width,ypos+height/2+5,0)
draw_set_color(c_black)
draw_rectangle(xpos-width,ypos-height/2-5,xpos+width,ypos+height/2+5,1)

draw_rectangle(xpos-width-1,ypos-height/2-6,xpos+width+1,ypos+height/2+5+1,1)

//draw_sprite(spr_plus,1,xpos-width+15,ypos)
draw_set_font(fnt_upgradesex)
draw_text(xpos,ypos+height/2-32,string(variable))
draw_set_font(fnt_upgrades)
draw_text(xpos,ypos,text)
gx = window_mouse_get_x()
gy = window_mouse_get_y()

if mouse_check_button(mb_left) {
if gx < xpos+width+1 and gx > xpos-width-1 {
    if gy < ypos+height/2+5+1 and gy > ypos-height/2-6 {
        //if variable = obj_player.regen {
        if text = "Regen"{
            obj_player.regen+=1
            exit
        }
        //if variable = obj_player.myspeed {
        if text = "Speed"{
            obj_player.myspeed+=1
            exit
        }
        //if variable = obj_player.stat_health {
        if text = "Health"{
            obj_player.stat_health+=1
            exit
        }
        //if variable = obj_player.mydamage {
        if text = "Damage"{
            obj_player.mydamage+=1
            exit
        }
        //if variable = obj_player.mycooldown {
        if text = "Cooldown"{
            obj_player.mycooldown+=1
            exit
        }
        //if variable = obj_player.defense {
        if text = "Defense"{
            obj_player.defense+=1
            exit
        }
        
    }
}
}

