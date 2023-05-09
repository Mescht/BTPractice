# reset logic
execute if score reset_hos settings matches 1 as @a[scores={reset_hos=1..}] run function practice:findbt
execute if score reset_shovel settings matches 1 as @a[scores={reset_shovel=1..}] run function practice:findbt
execute if score reset_fish settings matches 1 as @a[scores={reset_cod=1..}] run function practice:findbt
execute if score reset_fish settings matches 1 as @a[scores={reset_salmon=1..}] run function practice:findbt
execute if score reset_openbt settings matches 1 as @a[scores={chest_opened=1..}] run function practice:finish
execute if score reset_craftingtable settings matches 1 as @a[scores={reset_ctable=1..}] run function practice:finish
execute if score reset_boat settings matches 1 as @a[nbt={RootVehicle:{Entity:{id:"minecraft:boat"}}}] run function practice:finish

scoreboard players set @a reset_hos 0
scoreboard players set @a reset_shovel 0
scoreboard players set @a reset_cod 0
scoreboard players set @a reset_salmon 0

execute as @a[scores={chest_opened=1}] run function practice:btopened

execute if score active timer matches 1 run function practice:timer/timer

execute as @a[scores={s=1..}] run function practice:show_bt/run

execute as @a[scores={relog=1}] run function practice:post_init

execute as @a run function practice:target_chest

effect give @a minecraft:saturation 10 100 true