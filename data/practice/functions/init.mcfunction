scoreboard objectives add c dummy
scoreboard objectives add dist dummy
scoreboard objectives add reset minecraft.dropped:heart_of_the_sea
scoreboard objectives add chestOpened minecraft.custom:minecraft.open_chest
scoreboard objectives add timer dummy

scoreboard players set -100 c -100
scoreboard players set 100 c 100
scoreboard players set 500 c 500

scoreboard players set 1200 c 1200
scoreboard players set 20 c 20
scoreboard players set 60 c 60
scoreboard players set 5 c 5


tellraw @a {"text":"[To New BT]","color":"gold","clickEvent":{"action":"run_command","value":"/function practice:findbt"}}

gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule sendCommandFeedback false
gamerule spectatorsGenerateChunks false

execute as @a[tag=debug] run gamerule sendCommandFeedback true