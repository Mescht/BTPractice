scoreboard objectives add c dummy
scoreboard objectives add dist dummy

scoreboard players set 100 c 100
scoreboard players set -100 c -100
scoreboard players set 1000 c 1000
scoreboard players set 1600 c 1600
scoreboard players set 500 c 500
scoreboard players set 800 c 800
scoreboard players set -500 c -500
scoreboard players set 0 c 0

scoreboard objectives add reset minecraft.dropped:heart_of_the_sea

tellraw @a {"text":"[To New BT]","color":"gold","clickEvent":{"action":"run_command","value":"/function practice:findbt"}}

gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule sendCommandFeedback false
gamerule spectatorsGenerateChunks false

execute as @a[tag=debug] run gamerule sendCommandFeedback true