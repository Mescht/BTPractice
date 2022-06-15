execute as @a[scores={reset_01=1..}] run function practice:findbt
execute as @a[scores={reset_02=1..}] run function practice:findbt
execute as @a[scores={finish=1..}] run function practice:finish

scoreboard players set @a reset_01 0
scoreboard players set @a reset_02 0

execute as @a[scores={chestOpened=1}] run function practice:btopened

effect give @a minecraft:saturation 10 100 true

execute if score active timer matches 1 run function practice:timer/timer

tellraw @a[scores={relog=1}] {"text":"[To New BT]","color":"gold","clickEvent":{"action":"run_command","value":"/function practice:findbt"}}