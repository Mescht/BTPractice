execute if score x dist matches 500.. run tp @s ~5 ~ ~
execute if score x dist matches 500.. run scoreboard players remove x dist 500

execute if score x dist matches ..-500 run tp @s ~-5 ~ ~
execute if score x dist matches ..-500 run scoreboard players add x dist 500

execute as @s at @s if score x dist matches 500.. run function practice:locate/tpx
execute as @s at @s if score x dist matches ..-500 run function practice:locate/tpx