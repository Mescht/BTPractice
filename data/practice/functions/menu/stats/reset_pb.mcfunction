scoreboard players reset pb_found records
scoreboard players reset pb_finished records

tellraw @a {"text":"PB Reset!\nReloading...\n"}

execute at @a run playsound minecraft:ui.button.click master @a ~ ~ ~ 1 1.2

reload