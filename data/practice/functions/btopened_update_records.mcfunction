execute unless score pb_found records matches 1.. run function practice:timer/new_pb_found
execute if score pb_found records > timer timer run function practice:timer/new_pb_found

scoreboard players operation avg_found records *= found records
scoreboard players operation avg_found records += timer timer

scoreboard players add found records 1

scoreboard players operation avg_found records /= found records