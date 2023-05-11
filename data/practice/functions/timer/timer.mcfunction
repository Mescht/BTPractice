# increment timer
execute if score active timer matches 1 run scoreboard players add timer timer 1

# display timer in actionbar
function practice:timer/calculate_units
function practice:timer/parser

#title @a actionbar [[{"color":"gold","nbt":"minutes","storage":"practice:timeparser","interpret":true},{"nbt":"seconds","storage":"practice:timeparser","interpret":true}],[{"color":"gray","text":" ["}],[{"nbt":"diff_sign","storage":"practice:timeparser","interpret":true},{"nbt":"diff_minutes","storage":"practice:timeparser","interpret":true},{"nbt":"diff_seconds","storage":"practice:timeparser","interpret":true}],[{"color":"gray","text":"]"}]]

title @a actionbar [{"nbt":"time_string","storage":"practice:timeparser","interpret":true},{"nbt":"time_diff_string","storage":"practice:timeparser","interpret":true}]