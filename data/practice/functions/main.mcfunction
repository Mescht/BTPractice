execute as @a[scores={reset=1..}] run function practice:findbt
scoreboard players set @a reset 0

execute as @a[scores={chestOpened=1..}] run function practice:bt_opened

effect give @a minecraft:saturation 10 100 true

execute if score active timer matches 1 run function practice:timer/timer