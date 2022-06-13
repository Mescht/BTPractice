scoreboard players operation x dist -= d dist
scoreboard players operation z dist -= d dist

scoreboard players operation d dist *= 100 c
scoreboard players operation x dist *= -100 c
scoreboard players operation z dist *= -100 c

scoreboard players operation x dist *= d dist
scoreboard players operation z dist *= d dist

scoreboard players operation x dist /= 500 c
scoreboard players operation z dist /= 500 c

execute as 0-0-0-0-AEC at @s run function practice:tpx
execute as 0-0-0-0-AEC at @s run function practice:tpz

execute if score d dist <= 800 c run function practice:btfound
execute if score d dist > 800 c run function practice:gradient_decent_01
