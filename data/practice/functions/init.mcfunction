scoreboard objectives add c dummy
scoreboard objectives add dist dummy
scoreboard objectives add reset_01 minecraft.dropped:heart_of_the_sea
scoreboard objectives add reset_02 minecraft.dropped:golden_shovel
scoreboard objectives add finish minecraft.mined:minecraft.crafting_table
scoreboard objectives add chestOpened minecraft.custom:minecraft.open_chest
scoreboard objectives add timer dummy
scoreboard objectives add relog minecraft.custom:minecraft.play_one_minute
scoreboard objectives add settings dummy

scoreboard players set -100 c -100
scoreboard players set 100 c 100
scoreboard players set 500 c 500

scoreboard players set 1200 c 1200
scoreboard players set 20 c 20
scoreboard players set 60 c 60
scoreboard players set 5 c 5

scoreboard players set @a relog 0
scoreboard players set shovel settings 1

gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule sendCommandFeedback false
gamerule spectatorsGenerateChunks false

execute as @a[tag=debug] run gamerule sendCommandFeedback true