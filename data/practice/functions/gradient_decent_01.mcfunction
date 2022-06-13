scoreboard players reset * dist

execute as 0-0-0-0-AEC at @s store result score d dist run locate buried_treasure
execute as 0-0-0-0-AEC at @s positioned ~5 ~ ~ store result score x dist run locate buried_treasure
execute as 0-0-0-0-AEC at @s positioned ~ ~ ~5 store result score z dist run locate buried_treasure

tellraw @a[tag=debug] [{"text":"Distance: "},{"score":{"name":"d","objective":"dist"}}]

execute if score d dist = 0 c if score i dist = 0 c run function practice:error_no_bt

scoreboard players add i dist 1

execute if score d dist > 0 c run function practice:gradient_decent_02