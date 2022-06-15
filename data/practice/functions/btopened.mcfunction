clear @a minecraft:golden_shovel

scoreboard players set @a chestOpened 2

execute if score minutes timer matches 0 if score thousth timer matches ..9 run title @a subtitle [{"color":"gold","score":{"name":"seconds","objective":"timer"}},{"text":".0"},{"score":{"name":"thousth","objective":"timer"}},{"text":"s"}]

execute if score minutes timer matches 0 if score thousth timer matches 10.. run title @a subtitle [{"color":"gold","score":{"name":"seconds","objective":"timer"}},{"text":"."},{"score":{"name":"thousth","objective":"timer"}},{"text":"s"}]

execute if score minutes timer matches 1.. if score thousth timer matches ..9 run title @a subtitle [{"color":"gold","score":{"name":"minutes","objective":"timer"}},{"text":"m "},{"score":{"name":"seconds","objective":"timer"}},{"text":".0"},{"score":{"name":"thousth","objective":"timer"}},{"text":"s"}]

execute if score minutes timer matches 1.. if score thousth timer matches 10.. run title @a subtitle [{"color":"gold","score":{"name":"minutes","objective":"timer"}},{"text":"m "},{"score":{"name":"seconds","objective":"timer"}},{"text":"."},{"score":{"name":"thousth","objective":"timer"}},{"text":"s"}]

title @a title {"text":""}