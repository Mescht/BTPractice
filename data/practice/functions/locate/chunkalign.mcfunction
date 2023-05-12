scoreboard players reset * pos

execute store result score x pos run data get entity 0-0-0-0-AEC Pos[0]
execute store result score z pos run data get entity 0-0-0-0-AEC Pos[2]

scoreboard players operation o_x pos = x pos
scoreboard players operation o_z pos = z pos

scoreboard players operation o_x pos /= 16 c
scoreboard players operation o_z pos /= 16 c
scoreboard players operation o_x pos *= 16 c
scoreboard players operation o_z pos *= 16 c

scoreboard players operation d_x pos = o_x pos
scoreboard players operation d_z pos = o_z pos
scoreboard players operation d_x pos -= x pos
scoreboard players operation d_z pos -= z pos

execute unless score d_x pos matches 0.. run function practice:locate/alignx
execute unless score d_z pos matches 0.. run function practice:locate/alignz

execute as 0-0-0-0-AEC at @s run tp @s ~9 ~ ~9