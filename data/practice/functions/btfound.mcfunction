execute at 0-0-0-0-AEC run spreadplayers ~ ~ 0 32 false @a

gamemode survival @a
#replaceitem entity @a weapon.mainhand minecraft:golden_shovel

tellraw @a {"text":"Found BT!","color":"dark_green"}
tellraw @a {"text":"[To New BT]","color":"gold","clickEvent":{"action":"run_command","value":"/function practice:findbt"}}