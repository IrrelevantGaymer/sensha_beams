tag @s remove sb.holding_crowbar

$execute \
    as @e[ \
        type=minecraft:marker, \
        tag=sensha_crowbar, \
        nbt={data:{UUID: $(UUID)}} \
    ] \
    run function sb.mining:operations/update_closest_checked_beam with entity @s

$execute \
    as @e[ \
        type=minecraft:marker, \
        tag=sensha_crowbar, \
        nbt={data:{UUID: $(UUID)}} \
    ] \
    run function sb.mining:update_beam_glows with entity @s

$kill @e[ \
    type=minecraft:marker, \
    tag=sensha_crowbar, \
    nbt={data: {UUID: $(UUID)}} \
]