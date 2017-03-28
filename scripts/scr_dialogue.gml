///scr_dialogue(line1,line2,line3...)
tx = instance_create(x,y-sprite_height/2,obj_textgen)
tx.dotxt = argument_count-1
for (i=0;i!=argument_count;i+=1) {
    tx.line[i]=argument[i]
}
