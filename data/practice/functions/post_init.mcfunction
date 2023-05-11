tellraw @a [{"text":"BT Practice ","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Show on GitHub"}]},"clickEvent":{"action":"open_url","value":"https://github.com/Mescht/BTPractice"}},{"text":"by ","color":"white"},{"text":"Mescht","color":"dark_green"}]

tellraw @a [{"text":"[To New BT]","color":"gold","clickEvent":{"action":"run_command","value":"/function practice:findbt"},"hoverEvent":{"action":"show_text","contents":[{"text":"Go To New BT"}]}}]
tellraw @a [{"text":"[Settings]","color":"gray","clickEvent":{"action":"run_command","value":"/function practice:settings/dialog"},"hoverEvent":{"action":"show_text","contents":[{"text":"Show Settings Menu"}]}}, {"text":" [Stats]","color":"gray","clickEvent":{"action":"run_command","value":"/function practice:stats"},"hoverEvent":{"action":"show_text","contents":[{"text":"Show Stats"}]}}]

execute as @a unless score @s loot_preset matches 0.. run scoreboard players set @s loot_preset 2

scoreboard players enable @a s