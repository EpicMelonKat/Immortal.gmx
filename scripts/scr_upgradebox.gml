///scr_upgradebox(xpos,ypos,text,variable)
xpos = argument0
ypos = argument1
text = argument2
variable = argument3
width = 60
height = 16
draw_set_color(c_yellow)
draw_roundrect(xpos-width,ypos-height/2-5,xpos+width,ypos+height/2+5,0)
draw_set_color(c_black)
draw_roundrect(xpos-width,ypos-height/2-5,xpos+width,ypos+height/2+5,1)

draw_roundrect(xpos-width-1,ypos-height/2-6,xpos+width+1,ypos+height/2+5+1,1)

//draw_sprite(spr_plus,1,xpos-width+15,ypos)
draw_set_font(fnt_upgradesex)
if variable > 1 {
draw_text(xpos,ypos+height/2-32,string(variable-1))
}
draw_set_font(fnt_upgrades)
draw_text(xpos,ypos,text)
gx = window_mouse_get_x()
gy = window_mouse_get_y()

if obj_player.allocation > 0 {
if mouse_check_button_pressed(mb_left) or mouse_check_button(mb_right) or mouse_check_button(mb_middle){
if gx < xpos+width+1 and gx > xpos-width-1 {
    if gy < ypos+height/2+5+1 and gy > ypos-height/2-6 {
        mult=1
        if mouse_check_button(mb_middle) {
            mult=100
        }
        if mouse_check_button_pressed(mb_left) {
                obj_player.allocation-=1
        }
        //if variable = obj_player.regen {
        if text = "Regen"{
            obj_player.regen+=1*mult
            exit
        }
        //if variable = obj_player.myspeed {
        if text = "Speed"{
            obj_player.myspeed+=1*mult
            exit
        }
        //if variable = obj_player.stat_health {
        if text = "Health"{
            obj_player.stat_health+=1*mult
            exit
        }
        //if variable = obj_player.mydamage {
        if text = "Damage"{
            obj_player.mydamage+=1*mult
            exit
        }
        //if variable = obj_player.mycooldown {
        if text = "Cooldown"{
            obj_player.mycooldown+=1*mult
            exit
        }
        //if variable = obj_player.defense {
        if text = "Defense"{
            obj_player.defense+=1*mult
            exit
        }
        
    }
}
}
}
