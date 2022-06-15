clear @a
gamemode spectator @a
scoreboard players set i dist 0
scoreboard players set @a chestOpened 0

tellraw @a {"text":"Searching..."}

spreadplayers 0 0 0 1000000 false @a
execute as @p at @s unless entity 0-0-0-0-AEC run summon minecraft:area_effect_cloud ~ ~ ~ {"Duration":-1,"Age":-2147483648,"WaitTime":-2147483648,"UUID":[I;0,0,0,2796]}
tp 0-0-0-0-AEC @p

function practice:gradient_decent_01