$execute \
    anchored eyes positioned ^ ^ ^ \
    as @e[ \
        type=minecraft:item_display, \
        tag=placing_sensha_beam, \
        nbt={data: {UUID: $(UUID)}}, \
        limit=1, sort=arbitrary \
    ] \
    run function sb.raycast:operations/get_eyes_position {UUID: $(UUID)}

$data modify entity @e[ \
    type=minecraft:item_display, \
    tag=placing_sensha_beam, \
    nbt={data: {UUID: $(UUID)}}, \
    limit=1, sort=arbitrary \
] data.yaw set from entity @s Rotation[0]

$data modify entity @e[ \
    type=minecraft:item_display, \
    tag=placing_sensha_beam, \
    nbt={data: {UUID: $(UUID)}}, \
    limit=1, sort=arbitrary \
] data.pitch set from entity @s Rotation[1]

$data modify entity @e[ \
    type=minecraft:item_display, \
    tag=placing_sensha_beam, \
    nbt={data: {UUID: $(UUID)}}, \
    limit=1, sort=arbitrary \
] data.max_distance set value 5.0