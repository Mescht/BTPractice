tp 0-0-0-0-B00 0-0-0-0-AEC
execute at 0-0-0-0-AEC unless entity 0-0-0-0-B00 run summon armor_stand ~ ~ ~ {UUID:[I;0,0,0,2816],NoGravity:1b,Invulnerable:1b,Glowing:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:chest",Count:1b}]}

execute as 0-0-0-0-B00 at @s run tp @s ~ 80 ~

execute as 0-0-0-0-B00 at @s run function practice:show_bt/locate

execute as 0-0-0-0-B00 at @s if block ~ ~ ~ minecraft:bedrock run function practice:show_bt/error

execute as 0-0-0-0-B00 at @s run tp @s ~ ~-1.2 ~ -90 0

scoreboard players reset @a s
scoreboard players enable @a s