execute at 0-0-0-0-AEC run spreadplayers ~ ~ 0 64 false @a

gamemode survival @a
#replaceitem entity @a weapon.mainhand minecraft:golden_shovel

tellraw @a {"text":"Found BT!","color":"dark_green"}
tellraw @a {"text":"[To New BT]","color":"gold","clickEvent":{"action":"run_command","value":"/function practice:findbt"}}

execute as @p at @s store result score d dist run locate buried_treasure
tellraw @a[tag=debug] [{"text":"Distance to BT: "},{"score":{"name":"d","objective":"dist"},"color":"green"},{"text":" Blocks"}]

execute if score d dist > 64 c run tellraw @a [{"text":"Teleportation failed for unknown reason\nRetrying...","color":"red"}]
execute if score d dist > 64 c run function practice:findbt

