tellraw @a [{"text":"BT Practice ","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Show on GitHub"}]},"clickEvent":{"action":"open_url","value":"https://github.com/Mescht/BTPractice"}},{"text":"by ","color":"white"},{"text":"Mescht","color":"dark_green"}]

tellraw @a [{"text":"/trigger s ","color":"gray"},{"text":"for Settings Menu","color":"white"}]

tellraw @a {"text":"[To New BT]","color":"gold","clickEvent":{"action":"run_command","value":"/function practice:findbt"}}

execute as @a unless score @s loot_preset matches 0.. run scoreboard players set @s loot_preset 2

scoreboard players enable @a s