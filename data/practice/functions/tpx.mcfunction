execute if score x dist > 500 c run tp @s ~5 ~ ~
execute if score x dist > 500 c run scoreboard players remove x dist 500

execute if score x dist < -500 c run tp @s ~-5 ~ ~
execute if score x dist < -500 c run scoreboard players add x dist 500

#tp @a @e[name=bt,limit=1]

execute as @s at @s if score x dist > 500 c run function practice:tpx
execute as @s at @s if score x dist < -500 c run function practice:tpx