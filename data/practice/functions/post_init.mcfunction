tellraw @a [{"text":"BT Practice ","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Show on GitHub"}]},"clickEvent":{"action":"open_url","value":"https://github.com/Mescht/BTPractice"}},{"text":"by ","color":"white"},{"text":"Mescht","color":"dark_green"}]

function practice:menu/dialog_new_bt
function practice:menu/dialog_settings_and_stats

execute as @a unless score @s loot_preset matches 0.. run scoreboard players set @s loot_preset 2