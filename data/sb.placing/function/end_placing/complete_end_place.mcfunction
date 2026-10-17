tag @s remove sb.end_place
tag @s remove sb.holding_beam

$execute \
    if entity @s[gamemode=survival] \
    store result score @s sb.used_beam_count \
    run data get entity @e[ \
        type=minecraft:item_display, \
        tag=placing_sensha_beam, \
        nbt={data: {UUID: $(UUID)}}, \
        limit=1, sort=arbitrary \
    ] data.cost

execute \
    if entity @s[gamemode=survival] \
    run item modify entity @s weapon.mainhand sb.placing:apply_cost

function sb.placing:end_placing/prepare_beam_for_final_wrapper with entity @s