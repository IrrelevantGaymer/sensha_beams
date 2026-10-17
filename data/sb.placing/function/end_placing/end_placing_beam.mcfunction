function sb.placing:setup_raycast with entity @s

$execute \
    anchored eyes positioned ^ ^ ^ \
    as @e[ \
        type=minecraft:item_display, \
        tag=placing_sensha_beam, \
        nbt={data: {UUID: $(UUID)}}, \
        limit=1, sort=arbitrary \
    ] \
    unless function sb.raycast:run \
    run return run function sb.placing:end_placing/reset_invalid_end_beam with entity @s data

$execute \
    as @e[ \
        type=minecraft:item_display, \
        tag=placing_sensha_beam, \
        nbt={data: {UUID: $(UUID)}}, \
        limit=1, sort=arbitrary \
    ] \
    run return run function sb.placing:end_placing/handle_end_beam with entity @s data