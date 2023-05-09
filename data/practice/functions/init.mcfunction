# set up scorebaords
scoreboard objectives add c dummy
scoreboard objectives add dist dummy
scoreboard objectives add reset_hos minecraft.dropped:heart_of_the_sea
scoreboard objectives add reset_shovel minecraft.dropped:golden_shovel
scoreboard objectives add reset_cod minecraft.dropped:minecraft.cooked_cod
scoreboard objectives add reset_salmon minecraft.dropped:minecraft.cooked_salmon
scoreboard objectives add reset_ctable minecraft.mined:minecraft.crafting_table
scoreboard objectives add chest_opened minecraft.custom:minecraft.open_chest
scoreboard objectives add timer dummy
scoreboard objectives add relog minecraft.custom:minecraft.play_one_minute
scoreboard objectives add settings dummy
scoreboard objectives add s trigger
scoreboard objectives add loot_preset dummy
scoreboard objectives add pos dummy

# constants
scoreboard players set 1200 c 1200
scoreboard players set 500 c 500
scoreboard players set 100 c 100
scoreboard players set 60 c 60
scoreboard players set 50 c 50
scoreboard players set 20 c 20
scoreboard players set 16 c 16
scoreboard players set 10 c 10
scoreboard players set 9 c 9
scoreboard players set 5 c 5
scoreboard players set 3 c 3
scoreboard players set 2 c 2
scoreboard players set -100 c -100

# default settings
execute unless score shovel settings matches 0.. run scoreboard players set shovel settings 1
execute unless score debug settings matches 0.. run scoreboard players set debug settings 0
execute unless score max_dist settings matches 0.. run scoreboard players set max_dist settings 35

execute unless score reset_shovel settings matches 0.. run scoreboard players set reset_shovel settings 1
execute unless score reset_hos settings matches 0.. run scoreboard players set reset_hos settings 1
execute unless score reset_fish settings matches 0.. run scoreboard players set reset_fish settings 1
execute unless score reset_craftingtable settings matches 0.. run scoreboard players set reset_craftingtable settings 1
execute unless score reset_openbt settings matches 0.. run scoreboard players set reset_openbt settings 0
execute unless score reset_boat settings matches 0.. run scoreboard players set reset_boat settings 0

# gamerules
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule sendCommandFeedback false
gamerule spectatorsGenerateChunks false
gamerule keepInventory true

scoreboard players reset * relog