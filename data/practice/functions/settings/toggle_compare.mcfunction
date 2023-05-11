scoreboard players add compare_to settings 1
scoreboard players operation compare_to settings %= 3 c

execute if score compare_to settings matches 0 run data modify storage practice:timeparser compare_to set value "Avg."
execute if score compare_to settings matches 1 run data modify storage practice:timeparser compare_to set value "Best"
execute if score compare_to settings matches 2 run data modify storage practice:timeparser compare_to set value ""

function practice:settings/dialog