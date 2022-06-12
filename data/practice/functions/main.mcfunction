execute as @a[scores={reset=1..}] run function practice:findbt
scoreboard players set @a reset 0

effect give @a minecraft:saturation 10 100 true
effect give @a minecraft:haste 100 50 true