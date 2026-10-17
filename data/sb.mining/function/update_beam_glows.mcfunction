execute \
    if data entity @s data.closest_beam_UUID \
    run function sb.mining:operations/append_crowbar_source_uuid with entity @s data
execute \
    if data entity @s data.prev_closest_beam_UUID \
    run function sb.mining:operations/remove_crowbar_source_uuid with entity @s data

$execute \
    as @e[ \
        type=minecraft:item_display, \
        tag=root_sensha_beam, \
        nbt={data:{crowbar_source_UUIDs: [{UUID: $(UUID)}]}} \
    ] \
    run function sb.mining:operations/apply_glow with entity @s data
execute \
    as @e[ \
        type=minecraft:item_display, \
        tag=root_sensha_beam, \
        nbt={data:{crowbar_source_UUIDs: []}} \
    ] \
    run function sb.mining:operations/remove_glow with entity @s data