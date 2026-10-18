# tellraw @a ["has closest_beam ", {storage: "sensha_beams:mining", nbt: "has_closest_beam"}]
execute \
    if data storage sensha_beams:mining has_closest_beam \
    run data modify \
        entity @s data.closest_beam_UUID \
        set from entity @e[ \
            type=minecraft:item_display, \
            tag=root_sensha_beam, tag=sb.closest_beam, \
            limit=1, sort=arbitrary \
        ] UUID
# tellraw @a ["closest beam UUID ", {entity: "@s", nbt: "data.closest_beam_UUID"}]
execute \
    if data storage sensha_beams:mining has_closest_beam \
    run tag @e[ \
        type=minecraft:item_display, \
        tag=root_sensha_beam, tag=sb.closest_beam \
    ] remove sb.closest_beam
execute \
    unless data storage sensha_beams:mining has_closest_beam \
    run data remove entity @s data.closest_beam_UUID
# tellraw @a ["closest beam UUID ", {entity: "@s", nbt: "data.closest_beam_UUID"}]

execute \
    if data storage sensha_beams:mining has_prev_closest_beam \
    run tag @e[ \
        type=minecraft:item_display, \
        tag=root_sensha_beam, tag=sb.prev_closest_beam \
    ] remove sb.prev_closest_beam

tag @s remove sb.detecting_beam