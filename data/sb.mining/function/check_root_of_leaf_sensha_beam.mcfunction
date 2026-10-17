$execute \
    as @e[ \
        type=minecraft:item_display, \
        tag=root_sensha_beam, \
        nbt={data:{root_UUID: $(beam_root_UUID)}}, \
        limit=1, \
        sort=arbitrary \
    ] \
    run function sb.mining:check_root_sensha_beam {UUID: $(UUID)}