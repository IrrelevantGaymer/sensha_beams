function sb.placing:setup_raycast with entity @s

tag @s add sb.invalid_start

$execute \
    anchored eyes positioned ^ ^ ^ \
    as @e[ \
        type=minecraft:item_display, \
        tag=placing_sensha_beam, \
        nbt={data: {UUID: $(UUID)}}, \
        limit=1, sort=arbitrary \
    ] \
    unless function sb.raycast:run \
    run return run function sb.placing:start_placing/reset_invalid_start_beam

tag @s remove sb.invalid_start

$execute \
    as @e[ \
        type=minecraft:item_display, \
        tag=placing_sensha_beam, \
        nbt={data: {UUID: $(UUID)}}, \
        limit=1, sort=arbitrary \
    ] \
    run function sb.placing:operations/calculate_delta with entity @s data

$execute \
    as @e[ \
        type=minecraft:item_display, \
        tag=placing_sensha_beam, \
        nbt={data: {UUID: $(UUID)}}, \
        limit=1, sort=arbitrary \
    ] \
    run return run function sb.placing:start_placing/handle_start_beam with entity @s data