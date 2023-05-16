execute unless score pb_finished records matches 1.. run function practice:timer/new_pb_finished
execute if score pb_finished records > timer timer run function practice:timer/new_pb_finished

scoreboard players operation avg_finished records *= finished records
scoreboard players operation avg_finished records += timer timer

scoreboard players add finished records 1

scoreboard players operation avg_finished records /= finished records