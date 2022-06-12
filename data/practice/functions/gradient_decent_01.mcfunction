scoreboard players reset * dist

execute as @a at @s store result score d dist run locate buried_treasure
execute as @a at @s positioned ~5 ~ ~ store result score x dist run locate buried_treasure
execute as @a at @s positioned ~ ~ ~5 store result score z dist run locate buried_treasure

tellraw @a[tag=debug] [{"text":"Distance: "},{"score":{"name":"d","objective":"dist"}}]

execute if score d dist = 0 c run function practice:error_no_bt
execute if score d dist > 0 c run function practice:gradient_decent_02