tellraw @a {"text":"\nAre you sure you want to delete all records?","color":"red"}
tellraw @a [{"text":"   [Yes]","color":"green","clickEvent":{"action":"run_command","value":"/function practice:settings/reset_records"}},{"text":"   [No]","color":"red","clickEvent":{"action":"run_command","value":"/function practice:stats"}}]

execute at @a run playsound minecraft:ui.button.click master @a ~ ~ ~ 1 1.2