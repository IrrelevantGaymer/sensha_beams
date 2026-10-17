function sb.placing:holding/holding_beam
function sb.mining:holding/holding_crowbar

execute as @a at @s \
    if entity @s[tag=sb.start_place] \
    run function sb.placing:start_placing/start_placing_beam with entity @s
execute as @a at @s \
    if entity @s[tag=sb.end_place] \
    run function sb.placing:end_placing/end_placing_beam with entity @s
execute as @a at @s \
    if entity @s[tag=sb.holding_crowbar] \
    run function sb.mining:detect_beam with entity @s