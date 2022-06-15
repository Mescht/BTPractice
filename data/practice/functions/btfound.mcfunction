execute at 0-0-0-0-AEC run spreadplayers ~ ~ 0 32 false @a

gamemode survival @a
execute if score shovel settings matches 1 run replaceitem entity @a weapon.mainhand minecraft:golden_shovel{Unbreakable:1b}

tellraw @a {"text":"Found BT!","color":"dark_green"}
tellraw @a {"text":"[To New BT]","color":"gold","clickEvent":{"action":"run_command","value":"/function practice:findbt"}}

execute as @p at @s store result score d dist run locate buried_treasure
tellraw @a[tag=debug] [{"text":"Distance to BT: "},{"score":{"name":"d","objective":"dist"},"color":"green"},{"text":" Blocks"}]
tellraw @a[tag=debug] [{"text":"Steps: "},{"score":{"name":"i","objective":"dist"},"color":"green"}]

execute if score d dist matches 64.. run tellraw @a [{"text":"Teleportation failed for unknown reason\nRetrying...","color":"red"}]
execute if score d dist matches 64.. run function practice:findbt

scoreboard players set active timer 1
scoreboard players set timer timer 0