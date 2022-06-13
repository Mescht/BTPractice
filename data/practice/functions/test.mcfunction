execute as @e[type=minecraft:area_effect_cloud] at @s run tp @s ~5 ~ ~
scoreboard players remove d dist 1
execute if score d dist > 0 c run function practice:test
execute if score d dist = 0 c run tp @a @e[type=minecraft:area_effect_cloud,limit=1]