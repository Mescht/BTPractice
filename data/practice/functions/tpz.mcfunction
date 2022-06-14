execute if score z dist matches 500.. run tp @s ~ ~ ~5
execute if score z dist matches 500.. run scoreboard players remove z dist 500

execute if score z dist matches ..-500 run tp @s ~ ~ ~-5
execute if score z dist matches ..-500 run scoreboard players add z dist 500

execute as @s at @s if score z dist matches 500.. run function practice:tpz
execute as @s at @s if score z dist matches ..-500 run function practice:tpz