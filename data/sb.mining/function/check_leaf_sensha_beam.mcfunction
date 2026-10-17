$data \
    modify entity @e[ \
        type=minecraft:marker, \
        nbt={data: {UUID: $(UUID)}}, \
        limit=1, sort=arbitrary \
    ] data.beam_root_UUID \
    set from entity @s data.root_UUID

$execute \
    as @e[ \
        type=minecraft:marker, \
        nbt={data:{UUID: $(UUID)}} \
    ] \
    if function sb.mining:predicates/has_root_been_checked \
    run return 1

$execute \
    as @e[ \
        type=minecraft:marker, \
        nbt={data: {UUID: $(UUID)}}, \
        limit=1, sort=arbitrary \
    ] \
    run function sb.mining:check_root_of_leaf_sensha_beam with entity @s data