function practice:chunkalign

execute if score max_dist settings matches ..10 at 0-0-0-0-AEC run spreadplayers ~ ~ 0 10 false @a
execute if score max_dist settings matches 10..15 at 0-0-0-0-AEC run spreadplayers ~ ~ 0 15 false @a
execute if score max_dist settings matches 16..20 at 0-0-0-0-AEC run spreadplayers ~ ~ 0 20 false @a
execute if score max_dist settings matches 21..25 at 0-0-0-0-AEC run spreadplayers ~ ~ 0 25 false @a
execute if score max_dist settings matches 26..30 at 0-0-0-0-AEC run spreadplayers ~ ~ 0 30 false @a
execute if score max_dist settings matches 31..35 at 0-0-0-0-AEC run spreadplayers ~ ~ 0 35 false @a
execute if score max_dist settings matches 36..40 at 0-0-0-0-AEC run spreadplayers ~ ~ 0 40 false @a
execute if score max_dist settings matches 41..45 at 0-0-0-0-AEC run spreadplayers ~ ~ 0 45 false @a
execute if score max_dist settings matches 46.. at 0-0-0-0-AEC run spreadplayers ~ ~ 0 50 false @a

gamemode survival @a
execute at @p run setworldspawn

execute if score shovel settings matches 1 run replaceitem entity @a weapon.mainhand minecraft:golden_shovel{Unbreakable:1b}

tellraw @a {"text":"Found BT!","color":"dark_green"}
tellraw @a [{"text":"[To New BT]","color":"gold","clickEvent":{"action":"run_command","value":"/function practice:findbt"}}, {"text":" [Settings]","color":"gray","clickEvent":{"action":"run_command","value":"/function practice:settings/dialog"}}]

execute as @p at @s store result score d dist run locate buried_treasure
execute if score debug settings matches 1 run tellraw @a [{"text":"Distance to BT: "},{"score":{"name":"d","objective":"dist"},"color":"green"},{"text":" Blocks"}]
execute if score debug settings matches 1 run tellraw @a [{"text":"Steps: "},{"score":{"name":"i","objective":"dist"},"color":"green"}]

execute if score d dist matches 64.. run tellraw @a [{"text":"Teleportation failed for unknown reason\nRetrying...","color":"red"}]
execute if score d dist matches 64.. run function practice:findbt

scoreboard players set active timer 1
scoreboard players set timer timer 0