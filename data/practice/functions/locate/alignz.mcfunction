execute as 0-0-0-0-AEC at @s run tp @s ~ ~ ~-1
scoreboard players add d_z pos 1
execute unless score d_z pos matches 0.. run function practice:locate/alignz