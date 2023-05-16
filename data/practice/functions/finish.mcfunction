title @a title {"nbt":"time_string","storage":"practice:timeparser","interpret":true}
execute if score show_pace settings matches 0..2 run title @a subtitle {"nbt":"time_diff_string","storage":"practice:timeparser","interpret":true}

execute unless score revealed flags matches 1 run function practice:finish_update_records

scoreboard players set @a reset_ctable 0
scoreboard players set @a chest_opened 0
kill @e[type=boat]
function practice:locate/findbt