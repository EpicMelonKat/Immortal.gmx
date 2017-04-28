///scr_drawgrid(xpos,ypos,width,height,squaresize,linewidth,color)
xpos = argument0
ypos = argument1
gridwidth = argument2
gridheight = argument3
squaresize = argument4
linewidth = argument5
color = argument6
draw_set_color(c_ltgray)
draw_roundrect(xpos-gridwidth/2-squaresize,ypos-gridheight/2-squaresize,xpos+gridwidth/2+squaresize,ypos+gridheight/2+squaresize,0)
draw_set_color(c_black)
//horizontal lines
    for (i=ypos;i>ypos-(gridheight/2)-squaresize;i=i) { //upwards
        draw_line_width_colour(xpos,i,xpos+(gridwidth/2),i,linewidth,color,color)
        draw_line_width_colour(xpos,i,xpos-(gridwidth/2),i,linewidth,color,color)
        i-=squaresize
    }
    for (i=ypos;i<ypos+(gridheight/2)+squaresize;i=i) { //downwards
        draw_line_width_colour(xpos,i,xpos+(gridwidth/2),i,linewidth,color,color)
        draw_line_width_colour(xpos,i,xpos-(gridwidth/2),i,linewidth,color,color)
        i+=squaresize
    }


//vertical lines
    for (i=xpos;i>xpos-(gridwidth/2)-squaresize;i=i) { //left
        draw_line_width_colour(i,ypos,i,ypos-(gridheight/2),linewidth,color,color)
        draw_line_width_colour(i,ypos,i,ypos+(gridheight/2),linewidth,color,color)
        i-=squaresize
    }
    for (i=xpos;i<xpos+(gridwidth/2)+squaresize;i=i) { //right
        draw_line_width_colour(i,ypos,i,ypos-(gridheight/2),linewidth,color,color)
        draw_line_width_colour(i,ypos,i,ypos+(gridheight/2),linewidth,color,color)
        i+=squaresize
    }
