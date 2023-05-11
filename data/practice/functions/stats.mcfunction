execute at @a run playsound minecraft:ui.button.click master @a ~ ~ ~ 1 1.2

tellraw @a {"text":"\n\n\n\n\n\n\n\n\n"}

tellraw @a {"text":"----------Stats----------","color":"gray"}

tellraw @a [{"text":"   Attempts: "},{"score":{"name":"attempted","objective":"records"},"color":"green"}]
tellraw @a [{"text":"   BTs Found: "},{"score":{"name":"found","objective":"records"},"color":"green"}]

scoreboard players operation success_rate records = found records
scoreboard players operation success_rate records *= 100 c
scoreboard players operation success_rate records /= attempted records

execute if score attempted records matches 1.. run tellraw @a [{"text":"   Success Rate: "},{"score":{"name":"success_rate","objective":"records"},"color":"green"},{"text":"%"}]
execute unless score attempted records matches 1.. run tellraw @a [{"text":"   Success Rate: N/A"}]

tellraw @a {"text":""}

scoreboard players operation temp timer = timer timer

scoreboard players operation timer timer = pb_found records
function practice:timer/calculate_units
function practice:timer/parser
tellraw @a [{"text":"   Best BT Find: "},{"nbt":"time_string","storage":"practice:timeparser","interpret":true}]

scoreboard players operation timer timer = avg_found records
function practice:timer/calculate_units
function practice:timer/parser
tellraw @a [{"text":"   Avgerage BT Find: "},{"nbt":"time_string","storage":"practice:timeparser","interpret":true}]

tellraw @a {"text":""}

scoreboard players operation timer timer = pb_finished records
function practice:timer/calculate_units
function practice:timer/parser
tellraw @a [{"text":"   Best Finish: "},{"nbt":"time_string","storage":"practice:timeparser","interpret":true}]

scoreboard players operation timer timer = avg_finished records
function practice:timer/calculate_units
function practice:timer/parser
tellraw @a [{"text":"   Avgerage Finish: "},{"nbt":"time_string","storage":"practice:timeparser","interpret":true}]

tellraw @a {"text":""}

# Reset PB
tellraw @a [{"text":"   [Reset PB]","color":"red","clickEvent":{"action":"run_command","value":"/function practice:settings/reset_pb_dialog"}},{"text":" [Reset All Recrods]","color":"red","clickEvent":{"action":"run_command","value":"/function practice:settings/reset_records_dialog"}}]

tellraw @a {"text":""}

tellraw @a {"text":"[To New BT]","color":"gold","clickEvent":{"action":"run_command","value":"/function practice:findbt"},"hoverEvent":{"action":"show_text","contents":[{"text":"Go To New BT"}]}}

scoreboard players operation timer timer = temp timer