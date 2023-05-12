title @a title {"nbt":"time_string","storage":"practice:timeparser","interpret":true}
execute if score show_pace settings matches 0..2 run title @a subtitle {"nbt":"time_diff_string","storage":"practice:timeparser","interpret":true}

execute unless score pb_finished records matches 0.. run function practice:timer/new_pb_finished
execute if score pb_finished records > timer timer run function practice:timer/new_pb_finished

scoreboard players operation avg_finished records *= finished records
scoreboard players operation avg_finished records += timer timer

scoreboard players add finished records 1

scoreboard players operation avg_finished records /= finished records

scoreboard players set @a reset_ctable 0
scoreboard players set @a chest_opened 0
kill @e[type=boat]
function practice:locate/findbt