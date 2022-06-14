# increment timer
execute if score active timer matches 1 run scoreboard players add timer timer 1

# display timer in actionbar
function practice:timer/calculate_units
execute if score minutes timer matches 0 if score thousth timer matches ..9 run title @a actionbar [{"color":"gold","score":{"name":"seconds","objective":"timer"}},{"text":".0"},{"score":{"name":"thousth","objective":"timer"}},{"text":"s"}]

execute if score minutes timer matches 0 if score thousth timer matches 10.. run title @a actionbar [{"color":"gold","score":{"name":"seconds","objective":"timer"}},{"text":"."},{"score":{"name":"thousth","objective":"timer"}},{"text":"s"}]

execute if score minutes timer matches 1.. if score thousth timer matches ..9 run title @a actionbar [{"color":"gold","score":{"name":"minutes","objective":"timer"}},{"text":"m "},{"score":{"name":"seconds","objective":"timer"}},{"text":".0"},{"score":{"name":"thousth","objective":"timer"}},{"text":"s"}]

execute if score minutes timer matches 1.. if score thousth timer matches 10.. run title @a actionbar [{"color":"gold","score":{"name":"minutes","objective":"timer"}},{"text":"m "},{"score":{"name":"seconds","objective":"timer"}},{"text":"."},{"score":{"name":"thousth","objective":"timer"}},{"text":"s"}]