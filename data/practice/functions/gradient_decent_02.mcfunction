scoreboard players operation x dist -= d dist
scoreboard players operation z dist -= d dist

scoreboard players operation d dist *= 100 c
scoreboard players operation x dist *= -100 c
scoreboard players operation z dist *= -100 c

scoreboard players operation x dist *= d dist
scoreboard players operation z dist *= d dist

scoreboard players operation x dist /= 500 c
scoreboard players operation z dist /= 500 c

execute if score x dist matches 500.. as 0-0-0-0-AEC at @s run function practice:tpx
execute if score x dist matches ..-500 as 0-0-0-0-AEC at @s run function practice:tpx
execute if score z dist matches 500.. as 0-0-0-0-AEC at @s run function practice:tpz
execute if score z dist matches ..-500 as 0-0-0-0-AEC at @s run function practice:tpz

scoreboard players add i dist 1

execute if score d dist matches ..800 run function practice:btfound
execute if score d dist matches 801.. unless score i dist matches 20.. run function practice:gradient_decent_01
execute if score i dist matches 20.. run function practice:error_no_bt
