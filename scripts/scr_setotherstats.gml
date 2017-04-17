level = (distance_to_point(room_width/2,room_height/2)*distance_to_point(room_width/2,room_height/2))/100000000
if level < 1 {
    level = 1
}

stat_health = level*4
defense = level*0.4
mydamage = level
regen = level/2




maxhealth = stat_health
myhealth = maxhealth

left_key = 0
right_key = 0
up_key = 0
down_key = 0