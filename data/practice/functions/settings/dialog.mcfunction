scoreboard players reset @a s
scoreboard players enable @a s

tellraw @a {"text":"\n\n\n\n\n\n\n\n\n"}

tellraw @a {"text":"----------Settings----------","color":"gray"}

# Distance
tellraw @a [{"text":""},{"text":"   BT Dist. ","color":"white","hoverEvent":{"action":"show_text","contents":[{"text":"aproximate max. distance to BT"}]}},{"text":"[-] ","color":"yellow","clickEvent":{"action":"run_command","value":"/function practice:settings/dist_decrease"}},{"score":{"name":"max_dist","objective":"settings"},"color":"gold"},{"text":" [+] ","color":"yellow","clickEvent":{"action":"run_command","value":"/function practice:settings/dist_increase"}}]

# Shovel
execute if score shovel settings matches 1 run tellraw @a [{"text":"   Shovel ","color":"white"},{"text":"[Enabled]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function practice:settings/toggle_shovel"}}]
execute if score shovel settings matches 0 run tellraw @a [{"text":"   Shovel ","color":"white"},{"text":"[Disabled]","color":"red","clickEvent":{"action":"run_command","value":"/function practice:settings/toggle_shovel"}}]

# Loot
execute as @a if score @s loot_preset matches 1 run tellraw @s [{"text":"   Loot ","color":"white"},{"text":"[7 Iron]","color":"gold","clickEvent":{"action":"run_command","value":"/function practice:settings/toggle_iron"}}]
execute as @a if score @s loot_preset matches 2 run tellraw @s [{"text":"   Loot ","color":"white"},{"text":"[7 Iron + TNT]","color":"gold","clickEvent":{"action":"run_command","value":"/function practice:settings/toggle_iron"}}]
execute as @a unless score @s loot_preset matches 1..2 run tellraw @s [{"text":"   Loot ","color":"white"},{"text":"[Vanilla]","color":"gold","clickEvent":{"action":"run_command","value":"/function practice:settings/toggle_iron"}}]

# Debug
execute if score debug settings matches 1 run tellraw @a [{"text":"   Debug ","color":"white"},{"text":"[Enabled]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function practice:settings/toggle_debug"}}]
execute if score debug settings matches 0 run tellraw @a [{"text":"   Debug ","color":"white"},{"text":"[Disabled]","color":"red","clickEvent":{"action":"run_command","value":"/function practice:settings/toggle_debug"}}]

tellraw @a {"text":"\nReset Settings","color":"gray"}

# Shovel
execute if score reset_shovel settings matches 1 run tellraw @a [{"text":"   Drop Shovel "},{"text":"[Enabled]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function practice:settings/reset/toggle_shovel"}}]
execute if score reset_shovel settings matches 0 run tellraw @a [{"text":"   Drop Shovel "},{"text":"[Disabled]","color":"red","clickEvent":{"action":"run_command","value":"/function practice:settings/reset/toggle_shovel"}}]

# HOS
execute if score reset_hos settings matches 1 run tellraw @a [{"text":"   Drop HOS "},{"text":"[Enabled]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function practice:settings/reset/toggle_hos"}}]
execute if score reset_hos settings matches 0 run tellraw @a [{"text":"   Drop Hos "},{"text":"[Disabled]","color":"red","clickEvent":{"action":"run_command","value":"/function practice:settings/reset/toggle_hos"}}]

# Fish
execute if score reset_fish settings matches 1 run tellraw @a [{"text":"   Drop Fish "},{"text":"[Enabled]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function practice:settings/reset/set_fish"}}]
execute if score reset_fish settings matches 0 run tellraw @a [{"text":"   Drop Fish "},{"text":"[Disabled]","color":"red","clickEvent":{"action":"run_command","value":"/function practice:settings/reset/set_fish"}}]

# Crafting Table
execute if score reset_craftingtable settings matches 1 run tellraw @a [{"text":"   Mine Crafting Table "},{"text":"[Enabled]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function practice:settings/reset/toggle_craftingtable"}}]
execute if score reset_craftingtable settings matches 0 run tellraw @a [{"text":"   Mine Crafting Table "},{"text":"[Disabled]","color":"red","clickEvent":{"action":"run_command","value":"/function practice:settings/reset/toggle_craftingtable"}}]

# Boat
execute if score reset_boat settings matches 1 run tellraw @a [{"text":"   Enter Boat "},{"text":"[Enabled]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function practice:settings/reset/toggle_boat"}}]
execute if score reset_boat settings matches 0 run tellraw @a [{"text":"   Enter Boat "},{"text":"[Disabled]","color":"red","clickEvent":{"action":"run_command","value":"/function practice:settings/reset/toggle_boat"}}]

# BT
execute if score reset_openbt settings matches 1 run tellraw @a [{"text":"   Open BT "},{"text":"[Enabled]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function practice:settings/reset/toggle_openbt"}}]
execute if score reset_openbt settings matches 0 run tellraw @a [{"text":"   Open BT "},{"text":"[Disabled]","color":"red","clickEvent":{"action":"run_command","value":"/function practice:settings/reset/toggle_openbt"}}]

tellraw @a {"text":"\n[To New BT]","color":"gold","clickEvent":{"action":"run_command","value":"/function practice:findbt"}}