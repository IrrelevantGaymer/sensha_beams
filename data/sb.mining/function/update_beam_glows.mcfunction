execute \
    if data storage sensha_beams:mining {has_closest_beam: true} \
    as @e[type=minecraft:item_display, tag=root_sensha_beam, tag=sb.closest_beam] \
    run scoreboard players add @s sb.crowbar_sources 1
execute \
    if data storage sensha_beams:mining {has_prev_closest_beam: true} \
    as @e[type=minecraft:item_display, tag=root_sensha_beam, tag=sb.prev_closest_beam] \
    run scoreboard players remove @s sb.crowbar_sources 1

execute \
    as @e[ \
        type=minecraft:item_display, \
        tag=root_sensha_beam, \
        scores={sb.crowbar_sources=1..}\
    ] \
    run function sb.mining:operations/apply_glow with entity @s data
execute \
    as @e[ \
        type=minecraft:item_display, \
        tag=root_sensha_beam, \
        scores={sb.crowbar_sources=0}\
    ] \
    run function sb.mining:operations/remove_glow with entity @s data