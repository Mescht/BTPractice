execute as 0-0-0-0-AEC at @s store result score d dist run locate buried_treasure
execute as 0-0-0-0-AEC at @s positioned ~5 ~ ~ store result score x dist run locate buried_treasure
execute as 0-0-0-0-AEC at @s positioned ~ ~ ~5 store result score z dist run locate buried_treasure

execute if score debug settings matches 1 run tellraw @a [{"text":"Distance: "},{"score":{"name":"d","objective":"dist"}}]

execute if score d dist matches 0 if score i dist matches 0 run function practice:locate/error_no_bt

execute if score d dist matches 1.. run function practice:locate/gradient_decent_02
execute if score d dist matches 0 if score i dist matches 1.. run function practice:locate/gradient_decent_02