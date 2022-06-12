execute if score z dist > 500 c run tp @s ~ ~ ~5
execute if score z dist > 500 c run scoreboard players remove z dist 500

execute if score z dist < -500 c run tp @s ~ ~ ~-5
execute if score z dist < -500 c run scoreboard players add z dist 500

#tp @a @e[name=bt,limit=1]

execute as @s at @s if score z dist > 500 c run function practice:tpz
execute as @s at @s if score z dist < -500 c run function practice:tpz