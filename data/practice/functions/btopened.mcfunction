clear @a minecraft:golden_shovel

scoreboard players set @a chest_opened 2

execute if score show_pace settings matches 0..1 run title @a subtitle [[{"nbt":"time_string","storage":"practice:timeparser","interpret":true}],[{"nbt":"time_diff_string","storage":"practice:timeparser","interpret":true}]]
execute unless score show_pace settings matches 0..1 run title @a subtitle [[{"nbt":"time_string","storage":"practice:timeparser","interpret":true}]]
title @a title {"text":""}

execute unless score revealed flags matches 1 run function practice:btopened_update_records

# set compare time
execute if score compare_to settings matches 0 run scoreboard players operation compare timer_diff = avg_finished records
execute if score compare_to settings matches 1 run scoreboard players operation compare timer_diff = pb_finished records
execute if score compare_to settings matches 2 run scoreboard players set compare timer_diff 0