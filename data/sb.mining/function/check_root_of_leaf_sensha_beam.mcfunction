$execute \
    as @e[ \
        type=minecraft:item_display, \
        tag=root_sensha_beam, tag=!checked_beam, \
        distance=..17, \
        nbt={data:{root_UUID: $(root_UUID)}}, \
        limit=1, sort=arbitrary \
    ] \
    run function sb.mining:check_root_sensha_beam