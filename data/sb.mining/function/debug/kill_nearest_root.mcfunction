tag @e[ \
    type=minecraft:item_display, \
    tag=root_sensha_beam, \
    limit=1, sort=nearest \
] add sb.beam_to_mine

data modify \
    storage sensha_beams:mining closest_beam_UUID \
    set from entity @e[ \
        type=minecraft:item_display, \
        tag=root_sensha_beam, tag=sb.beam_to_mine, \
        limit=1, sort=nearest \
    ] UUID

function sb.mining:debug/tag_children_of_root_to_die with storage sensha_beams:mining
kill @e[type=minecraft:item_display, tag=sb.beam_to_mine]