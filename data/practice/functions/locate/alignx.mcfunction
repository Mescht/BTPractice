execute as 0-0-0-0-AEC at @s run tp @s ~-1 ~ ~
scoreboard players add d_x pos 1
execute unless score d_x pos matches 0.. run function practice:locate/alignx